{ ... }: {
  home.username = "mzellho";
  home.homeDirectory = "/home/mzellho";
  home.stateVersion = "24.11";

  imports = [
    ./git
    ./sops
  ];
}
