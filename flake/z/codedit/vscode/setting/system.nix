let
  video_screencast = import ./system/video/screencast.nix;
  video = import ./system/video.nix;
  sort = import ./system/sort.nix;
  scm = import ./system/scm.nix;
  npm = import ./system/npm.nix;
  git = import ./system/git.nix;
  app_eslint = import ./system/app/eslint.nix;
  app = import ./system/app.nix;
in
video_screencast // video // sort // scm // npm // git // app_eslint // app
