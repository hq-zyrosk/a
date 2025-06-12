let
  unstableFilter = "IncludeAlways";
  silenceVersionOverflows = false;
  lockFileEnabled = true;
  informPatchUpdates = true;
  ignoreLinePatterns = "";
  enabled = true;
in {
  "dependi.decoration.patchAvailable.style" = {
    before = {
      backgroundColor = "#FFFFFFFF";
      color = "#FFFF00FF";
    };
    after = {
      backgroundColor = "#FFFFFFFF";
      color = "#FFFF00FF";
    };
  };
  "dependi.decoration.incompatible.style" = {
    before = {
      backgroundColor = "#FFFFFFFF";
      color = "#FFAA00FF";
    };
    after = {
      backgroundColor = "#FFFFFFFF";
      color = "#FFAA00FF";
    };
  };
  "dependi.decoration.error.style" = {
    before = {
      backgroundColor = "#FFFFFFFF";
      color = "#FF0000FF";
    };
    after = {
      backgroundColor = "#FFFFFFFF";
      color = "#FF0000FF";
    };
  };
  "dependi.decoration.compatible.style" = {
    before = {
      backgroundColor = "#FFFFFFFF";
      color = "#000000FF";
    };
    after = {
      backgroundColor = "#FFFFFFFF";
      color = "#000000FF";
    };
  };
  "dependi.vulnerability.osvQueryURL.single" = "https://api.osv.dev/v1/query";
  "dependi.vulnerability.osvQueryURL.batch" = "https://api.osv.dev/v1/querybatch";
  "dependi.vulnerability.ghsa.enabled" = true;
  "dependi.vulnerability.enabled" = true;
  "dependi.rust.unstableFilter" = unstableFilter;
  "dependi.rust.silenceVersionOverflows" = silenceVersionOverflows;
  "dependi.rust.lockFileEnabled" = lockFileEnabled;
  "dependi.rust.informPatchUpdates" = informPatchUpdates;
  "dependi.rust.indexServerURL" = "https://index.crates.io";
  "dependi.rust.ignoreLinePatterns" = ignoreLinePatterns;
  "dependi.rust.enabled" = enabled;
  "dependi.python.unstableFilter" = unstableFilter;
  "dependi.python.silenceVersionOverflows" = silenceVersionOverflows;
  "dependi.python.lockFileEnabled" = lockFileEnabled;
  "dependi.python.informPatchUpdates" = informPatchUpdates;
  "dependi.python.indexServerURL" = "https://pypi.org/pypi";
  "dependi.python.ignoreLinePatterns" = ignoreLinePatterns;
  "dependi.python.enabled" = enabled;
  "dependi.php.unstableFilter" = unstableFilter;
  "dependi.php.silenceVersionOverflows" = silenceVersionOverflows;
  "dependi.php.lockFileEnabled" = lockFileEnabled;
  "dependi.php.informPatchUpdates" = informPatchUpdates;
  "dependi.php.indexServerURL" = "https://repo.packagist.org";
  "dependi.php.ignoreLinePatterns" = ignoreLinePatterns;
  "dependi.php.enabled" = enabled;
  "dependi.npm.unstableFilter" = unstableFilter;
  "dependi.npm.silenceVersionOverflows" = silenceVersionOverflows;
  "dependi.npm.lockFileEnabled" = lockFileEnabled;
  "dependi.npm.informPatchUpdates" = informPatchUpdates;
  "dependi.npm.indexServerURL" = "https://registry.npmjs.org";
  "dependi.npm.ignoreLinePatterns" = ignoreLinePatterns;
  "dependi.npm.enabled" = enabled;
  "dependi.go.unstableFilter" = unstableFilter;
  "dependi.go.silenceVersionOverflows" = silenceVersionOverflows;
  "dependi.go.informPatchUpdates" = informPatchUpdates;
  "dependi.go.indexServerURL" = "https://proxy.golang.org";
  "dependi.go.ignoreLinePatterns" = ignoreLinePatterns;
  "dependi.go.enabled" = enabled;
  "dependi.extras.silenceUpdateMessages" = false;
  "dependi.decoration.vulnerability.template" = "Vulnerability: \${count}";
  "dependi.decoration.position" = "before";
  "dependi.decoration.patchAvailable.template" = "\${version}";
  "dependi.decoration.incompatible.template" = "\${version}";
  "dependi.decoration.error.template" = "\${version}";
  "dependi.decoration.compatible.template" = "";
  "dependi.dart.unstableFilter" = unstableFilter;
  "dependi.dart.silenceVersionOverflows" = silenceVersionOverflows;
  "dependi.dart.lockFileEnabled" = lockFileEnabled;
  "dependi.dart.informPatchUpdates" = informPatchUpdates;
  "dependi.dart.indexServerURL" = "https://pub.dev";
  "dependi.dart.ignoreLinePatterns" = ignoreLinePatterns;
  "dependi.dart.enabled" = enabled;
  "dependi.apiURL" = "https://index.dependi.io";
  "dependi.apiKey" = "";
}
