{
  imports = [
    ./boot.nix
    ./docker.nix
    ./flakes.nix
    ./locale.nix
    ./network.nix
    ./packages.nix
    ./ssh.nix
    ./user.nix
  ];

  system.stateVersion = "24.11";
}
