let
  locale = "de_AT.UTF-8";
  timezone = "Europe/Vienna";
in {
  time.timeZone = timezone;

  i18n = {
    defaultLocale = locale;

    extraLocaleSettings = {
        LC_ADDRESS = locale;
        LC_IDENTIFICATION = locale;
        LC_MEASUREMENT = locale;
        LC_MONETARY = locale;
        LC_NAME = locale;
        LC_NUMERIC = locale;
        LC_PAPER = locale;
        LC_TELEPHONE = locale;
        LC_TIME = locale;
      };
  };

  services.xserver.xkb.layout = "at";
  console.useXkbConfig = true;
}
