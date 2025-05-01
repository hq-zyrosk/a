{
  "remote.portsAttributes" = {
    "3000" = {
      "label" = "Application";
      "onAutoForward" = "openPreview";
    };
  };
  "remote.otherPortsAttributes" = {
    "onAutoForward" = "notify";
  };
  "remote.extensionKind" = {
    "pub.name" = ["ui"];
  };
  "remote.defaultExtensionsIfInstalledLocally" = [
    "GitHub.copilot"
    "GitHub.copilot-chat"
    "GitHub.vscode-pull-request-github"
  ];
  "remote.tunnels.access.preventSleep" = true;
  "remote.tunnels.access.hostNameOverride" = "";
  "remote.restoreForwardedPorts" = true;
  "remote.localPortHost" = "localhost";
  "remote.forwardOnOpen" = true;
  "remote.downloadExtensionsLocally" = true;
  "remote.autoForwardPortsSource" = "process";
  "remote.autoForwardPortsFallback" = 20;
  "remote.autoForwardPorts" = true;
}
