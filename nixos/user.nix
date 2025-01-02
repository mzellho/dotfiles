let
  username = "mzellho";
in {
  users.users.${username} = {
    isNormalUser = true;
    initialPassword = username;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
  };
}
