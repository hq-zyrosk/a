let
  workbench_zenmode = import ./design/workbench/zenmode.nix;
  workbench_theme = import ./design/workbench/theme.nix;
  workbench_tab = import ./design/workbench/tab.nix;
  workbench_list = import ./design/workbench/list.nix;
  workbench_editor = import ./design/workbench/editor.nix;
  workbench = import ./design/workbench.nix;
  window = import ./design/window.nix;
  text = import ./design/text.nix;
  terminal = import ./design/terminal.nix;
  security = import ./design/security.nix;
  search = import ./design/search.nix;
  problems = import ./design/problems.nix;
  extension = import ./design/extension.nix;
  explorer = import ./design/explorer.nix;
  editor_suggest = import ./design/editor/suggest.nix;
  editor_notebook = import ./design/editor/notebook.nix;
  editor_merge = import ./design/editor/merge.nix;
  editor_inline = import ./design/editor/inline.nix;
  editor_diff_multi = import ./design/editor/diff/multi.nix;
  editor_diff = import ./design/editor/diff.nix;
  editor_breadcrumbs = import ./design/editor/breadcrumbs.nix;
  editor = import ./design/editor.nix;
  debug = import ./design/debug.nix;
  colour = import ./design/colour.nix;
  code_lens = import ./design/code/lens.nix;
  code = import ./design/code.nix;
  chat_inline = import ./design/chat/inline.nix;
  chat_github = import ./design/chat/github.nix;
  chat = import ./design/chat.nix;
in
workbench_zenmode
// workbench_theme
// workbench_tab
// workbench_list
// workbench_editor
// workbench
// window
// text
// terminal
// security
// search
// problems
// extension
// explorer
// editor_suggest
// editor_notebook
// editor_merge
// editor_inline
// editor_diff_multi
// editor_diff
// editor_breadcrumbs
// editor
// debug
// colour
// code_lens
// code
// chat_inline
// chat_github
// chat
