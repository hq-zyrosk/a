let
  workbench = import ./design/workbench.nix;
  window = import ./design/window.nix;
  text = import ./design/text.nix;
  terminal = import ./design/terminal.nix;
  search = import ./design/search.nix;
  extension = import ./design/extension.nix;
  explorer = import ./design/explorer.nix;
  editor_notebook = import ./design/editor/notebook.nix;
  editor_inline = import ./design/editor/inline.nix;
  editor_diff_multi = import ./design/editor/diff/multi.nix;
  editor_diff = import ./design/editor/diff.nix;
  editor_breadcrumbs = import ./design/editor/breadcrumbs.nix;
  editor = import ./design/editor.nix;
  colour = import ./design/colour.nix;
  code_lens = import ./design/code/lens.nix;
  code = import ./design/code.nix;
  chat_inline = import ./design/chat/inline.nix;
  chat_github = import ./design/chat/github.nix;
  chat = import ./design/chat.nix;
in
workbench
// window
// text
// terminal
// search
// extension
// explorer
// editor_notebook
// editor_inline
// editor_diff_multi
// editor_diff
// editor_breadcrumbs
// editor
// colour
// code_lens
// code
// chat_inline
// chat_github
// chat
