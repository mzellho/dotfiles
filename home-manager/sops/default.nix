{
  inputs,
  config,
  pkgs,
  ...
} : {
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";

    # workaround until https://github.com/Mic92/sops-nix/issues/287 is fixed
    # Default is "%r/secrets" with "%r" supposed to be replaced with $XDG_RUNTIME_DIR
    # however replacement currently doesnt work leaving literal "%r" in the secret path
    defaultSymlinkPath = "${config.xdg.dataHome}/secrets";

    age = {
        keyFile = "/home/mzellho/.config/sops/age/keys.txt";
    };

    secrets = {

    };
  };

  home.packages = with pkgs; [
    sops
  ];

#  systemd.user.services.mbsync.Unit.After = [ "sops-nix.service" ];

#  home.activation.setupEtc = config.lib.dag.entryAfter [ "writeBoundary" ] ''
#    /run/current-system/sw/bin/systemctl start --user sops-nix
#  '';
}
