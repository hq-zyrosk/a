let
  workbench_zenmode = import ./design/workbench/zenmode.nix;
  workbench_theme = import ./design/workbench/theme.nix;
  workbench_tab = import ./design/workbench/tab.nix;
  workbench_list = import ./design/workbench/list.nix;
  workbench_editor = import ./design/workbench/editor.nix;
  workbench_browser = import ./design/workbench/browser.nix;
  workbench = import ./design/workbench.nix;
  window = import ./design/window.nix;
  widget_testing = import ./design/widget/testing.nix;
  widget_stickyscroll = import ./design/widget/stickyscroll.nix;
  widget_security = import ./design/widget/security.nix;
  widget_remote = import ./design/widget/remote.nix;
  widget_problems = import ./design/widget/problems.nix;
  widget_explorer = import ./design/widget/explorer.nix;
  widget_emmet = import ./design/widget/emmet.nix;
  widget_debug = import ./design/widget/debug.nix;
  widget = import ./design/widget.nix;
  search = import ./design/search.nix;
  editor_timeline = import ./design/editor/timeline.nix;
  editor_terminal = import ./design/editor/terminal.nix;
  editor_suggest = import ./design/editor/suggest.nix;
  editor_outline = import ./design/editor/outline.nix;
  editor_minimap = import ./design/editor/minimap.nix;
  editor_inline = import ./design/editor/inline.nix;
  editor_indent = import ./design/editor/indent.nix;
  editor_hover = import ./design/editor/hover.nix;
  editor_goto = import ./design/editor/goto.nix;
  editor_font = import ./design/editor/font.nix;
  editor_fold = import ./design/editor/fold.nix;
  editor_find = import ./design/editor/find.nix;
  editor_diff_multi = import ./design/editor/diff/multi.nix;
  editor_diff = import ./design/editor/diff.nix;
  editor_code_lens = import ./design/editor/code/lens.nix;
  editor_code = import ./design/editor/code.nix;
  editor = import ./design/editor.nix;
  cursor = import ./design/cursor.nix;
  colour = import ./design/colour.nix;
  chat_inline = import ./design/chat/inline.nix;
  chat = import ./design/chat.nix;
in
  workbench_zenmode
  // workbench_theme
  // workbench_tab
  // workbench_list
  // workbench_editor
  // workbench_browser
  // workbench
  // window
  // widget_testing
  // widget_stickyscroll
  // widget_security
  // widget_remote
  // widget_problems
  // widget_explorer
  // widget_emmet
  // widget_debug
  // widget
  // search
  // editor_timeline
  // editor_terminal
  // editor_suggest
  // editor_outline
  // editor_minimap
  // editor_inline
  // editor_indent
  // editor_hover
  // editor_goto
  // editor_font
  // editor_fold
  // editor_find
  // editor_diff_multi
  // editor_diff
  // editor_code_lens
  // editor_code
  // editor
  // cursor
  // colour
  // chat_inline
  // chat
