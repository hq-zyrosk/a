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
  "telemetry.feedback.enabled" = true;
  "telemetry.disableFeedback" = true;
  "settingsSync.keybindingsPerPlatform" = true;
  "settingsSync.ignoredSettings" = [];
  "settingsSync.ignoredExtensions" = [];
  "microsoft-authentication.implementation" = "msal";
  "keyboard.dispatch" = "code";
}
