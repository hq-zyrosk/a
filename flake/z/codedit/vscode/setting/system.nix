let
  app_eslint = import ./system/app/eslint.nix;
  video_screencast = import ./system/video/screencast.nix;
  video = import ./system/video.nix;
  sort = import ./system/sort.nix;
  scm = import ./system/scm.nix;
  git = import ./system/git.nix;
  app = import ./system/app.nix;
in
video_screencast // video // sort // scm // git // app_eslint // app
