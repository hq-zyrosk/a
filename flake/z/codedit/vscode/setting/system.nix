let
  video_screencast = import ./system/video/screencast.nix;
  video = import ./system/video.nix;
  user_accessibility = import ./system/user/accessibility.nix;
  user = import ./system/user.nix;
  task_jake = import ./system/task/jake.nix;
  task_gulp = import ./system/task/gulp.nix;
  task_grunt = import ./system/task/grunt.nix;
  task = import ./system/task.nix;
  scm_git = import ./system/scm/git.nix;
  scm = import ./system/scm.nix;
  npm = import ./system/npm.nix;
  net_http = import ./system/net/http.nix;
  net = import ./system/net.nix;
  cap_github_copilot_chat = import ./system/cap/github/copilot/chat.nix;
  cap_github_copilot = import ./system/cap/github/copilot.nix;
  cap_github = import ./system/cap/github.nix;
  cap_eslint = import ./system/cap/eslint.nix;
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
  // scm_git
  // scm
  // npm
  // net_http
  // net
  // cap_github_copilot_chat
  // cap_github_copilot
  // cap_github
  // cap_eslint
  // app_dependi
  // app
