{
  "mcp" = {
    "servers" = {
      "mcp-server-time" = {
        "env" = {};
        "args" = [
          "-m"
          "mcp_server_time"
          "--local-timezone=America/Los_Angeles"
        ];
        "command" = "python";
      };
    };
    "inputs" = [];
  };
  "update.showReleaseNotes" = true;
  "update.mode" = "none";
  "telemetry.telemetryLevel" = "off";
  "settingsSync.keybindingsPerPlatform" = true;
  "settingsSync.ignoredSettings" = [];
  "settingsSync.ignoredExtensions" = [];
  "microsoft-authentication.implementation" = "msal";
  "keyboard.dispatch" = "code";
}
