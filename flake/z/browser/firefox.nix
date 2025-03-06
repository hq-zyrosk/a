{ pkgs, ... }:
{
  programs = {
    firefox = {
      profiles.default = {
        settings = {
          "browser.theme.content-theme" = 1;
          "browser.theme.toolbar-theme" = 1;
          "ui.systemUsesDarkTheme" = 1;
        };
      };
      policies = {
        Proxy = {
          UseProxyForDNS = true;
          SOCKSVersion = 5;
          SOCKSProxy = "127.0.0.1";
          SOCKSPort = 9050;
          Mode = "manual";
        };
        DNSOverHTTPS = {
          Enabled = false;
        };
        OverridePostUpdatePage = "";
        OverrideFirstRunPage = "";
        NetworkPrediction = false;
        DisableTelemetry = true;
        DisablePasswordReveal = true;
        DisableFormHistory = true;
        DisableFirefoxAccounts = true;
      };
      preferences = {
        "webgl.disabled" = true;
        "privacy.resistFingerprinting" = true;
        "privacy.donottrackheader.enabled" = true;
        "network.proxy.type" = 1;
        "network.proxy.socks_remote_dns" = true;
        "network.proxy.socks_port" = 9050;
        "network.proxy.socks" = "127.0.0.1";
        "media.peerconnection.enabled" = false;
        "media.navigator.enabled" = false;
        "geo.enabled" = false;
        "dom.event.clipboardevents.enabled" = false;
        "browser.send_pings" = false;
        "browser.safebrowsing.malware.enabled" = false;
        "browser.safebrowsing.enabled" = false;
      };
      package = pkgs.firefox;
      enable = true;
    };
  };
}
