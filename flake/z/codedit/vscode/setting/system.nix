let
  video_screencast = import ./system/video/screencast.nix;
  video = import ./system/video.nix;
  user_accessibility = import ./system/user/accessibility.nix;
  user = import ./system/user.nix;
  task_jake = import ./system/task/jake.nix;
  task_gulp = import ./system/task/gulp.nix;
  task_grunt = import ./system/task/grunt.nix;
  task = import ./system/task.nix;
  sort = import ./system/sort.nix;
  scm_git = import ./system/scm/git.nix;
  scm = import ./system/scm.nix;
  npm = import ./system/npm.nix;
  net_http = import ./system/net/http.nix;
  net = import ./system/net.nix;
  app_github_copilot = import ./system/app/github/copilot.nix;
  app_github = import ./system/app/github.nix;
  app_eslint = import ./system/app/eslint.nix;
  app_dependi = import ./system/app/dependi.nix;
  app = import ./system/app.nix;
in
video_screencast
// video
// user_accessibility
// user
// task_jake
// task_gulp
// task_grunt
// task
// sort
// scm_git
// scm
// npm
// net_http
// net
// app_github_copilot
// app_github
// app_eslint
// app_dependi
// app
