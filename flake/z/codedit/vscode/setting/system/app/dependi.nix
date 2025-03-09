let
  unstableFilter = "IncludeAlways";
  enabled = true;
in
{
  "dependi.decoration.patchAvailable.style" = {
    before = {
      backgroundColor = "#000000FF";
      color = "#FFFF00FF";
    };
    after = {
      backgroundColor = "#000000FF";
      color = "#FFFF00FF";
    };
  };
  "dependi.decoration.incompatible.style" = {
    before = {
      backgroundColor = "#000000FF";
      color = "#FFAA00FF";
    };
    after = {
      backgroundColor = "#000000FF";
      color = "#FFAA00FF";
    };
  };
  "dependi.decoration.error.style" = {
    before = {
      backgroundColor = "#000000FF";
      color = "#FF0000FF";
    };
    after = {
      backgroundColor = "#000000FF";
      color = "#FF0000FF";
    };
  };
  "dependi.decoration.compatible.style" = {
    before = {
      backgroundColor = "#000000FF";
      color = "#FFFFFFFF";
    };
    after = {
      backgroundColor = "#000000FF";
      color = "#FFFFFFFF";
    };
  };
  "dependi.vulnerability.osvQueryURL.single" = "https://api.osv.dev/v1/query";
  "dependi.vulnerability.osvQueryURL.batch" = "https://api.osv.dev/v1/querybatch";
  "dependi.vulnerability.ghsa.enabled" = true;
  "dependi.vulnerability.enabled" = true;
  "dependi.rust.unstableFilter" = unstableFilter;
  "dependi.rust.silenceVersionOverflows" = false;
  "dependi.rust.lockFileEnabled" = true;
  "dependi.rust.informPatchUpdates" = true;
  "dependi.rust.indexServerURL" = "https://index.crates.io";
  "dependi.rust.ignoreLinePatterns" = "";
  "dependi.rust.enabled" = enabled;
  "dependi.python.unstableFilter" = unstableFilter;
  "dependi.python.silenceVersionOverflows" = false;
  "dependi.python.lockFileEnabled" = true;
  "dependi.python.informPatchUpdates" = true;
  "dependi.python.indexServerURL" = "https://pypi.org/pypi";
  "dependi.python.ignoreLinePatterns" = "";
  "dependi.python.enabled" = enabled;
  "dependi.php.unstableFilter" = unstableFilter;
  "dependi.php.silenceVersionOverflows" = false;
  "dependi.php.lockFileEnabled" = true;
  "dependi.php.informPatchUpdates" = true;
  "dependi.php.indexServerURL" = "https://repo.packagist.org";
  "dependi.php.ignoreLinePatterns" = "";
  "dependi.php.enabled" = enabled;
  "dependi.npm.unstableFilter" = unstableFilter;
  "dependi.npm.silenceVersionOverflows" = false;
  "dependi.npm.lockFileEnabled" = true;
  "dependi.npm.informPatchUpdates" = true;
  "dependi.npm.indexServerURL" = "https://registry.npmjs.org";
  "dependi.npm.ignoreLinePatterns" = "";
  "dependi.npm.enabled" = enabled;
  "dependi.go.unstableFilter" = unstableFilter;
  "dependi.go.silenceVersionOverflows" = false;
  "dependi.go.informPatchUpdates" = true;
  "dependi.go.indexServerURL" = "https://proxy.golang.org";
  "dependi.go.ignoreLinePatterns" = "";
  "dependi.go.enabled" = enabled;
  "dependi.extras.silenceUpdateMessages" = false;
  "dependi.decoration.vulnerability.template" = "Vulnerability: \${count}";
  "dependi.decoration.position" = "before";
  "dependi.decoration.patchAvailable.template" = "\${version}";
  "dependi.decoration.incompatible.template" = "\${version}";
  "dependi.decoration.error.template" = "\${version}";
  "dependi.decoration.compatible.template" = "";
  "dependi.apiURL" = "https://index.dependi.io";
  "dependi.apiKey" = "";
}
