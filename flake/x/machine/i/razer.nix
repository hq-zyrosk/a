{ pkgs, ... }:
{
  hardware = {
    openrazer = {
      users = [ "x" ];
      batteryNotifier = {
        percentage = 10;
        frequency = 1024;
        enable = true;
      };
      verboseLogging = false;
      keyStatistics = true;
      syncEffectsEnabled = true;
      devicesOffOnScreensaver = true;
      enable = true;
    };
  };

  environment = {
    systemPackages = with pkgs; [
      openrazer-daemon
      polychromatic
      razergenie
    ];
  };
}
