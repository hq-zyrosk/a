[
  {
    when = "editorHoverFocused == true";
    key = "ctrl+shift+space";
    command = "workbench.action.focusActiveEditorGroup";
  }
  {
    when = "editorHoverFocused == false";
    key = "ctrl+shift+space";
    command = "editor.action.showHover";
  }
  {
    when = "editorHasSignatureHelpProvider && editorTextFocus";
    key = "ctrl+shift+space";
    command = "-editor.action.triggerParameterHints";
  }

  {
    when = "focusedView == 'workbench.scm'";
    key = "ctrl+shift+s";
    command = "workbench.action.focusActiveEditorGroup";
  }
  {
    when = "focusedView != 'workbench.scm'";
    key = "ctrl+shift+s";
    command = "workbench.scm.focus";
  }
  {
    key = "ctrl+shift+s";
    command = "-workbench.action.files.saveAs";
  }

  {
    when = "focusedView == 'workbench.view.search'";
    key = "ctrl+shift+f";
    command = "workbench.action.focusActiveEditorGroup";
  }
  {
    when = "focusedView != 'workbench.view.search'";
    key = "ctrl+shift+f";
    command = "workbench.action.findInFiles";
  }
  {
    key = "ctrl+shift+f";
    command = "-workbench.action.findInFiles";
  }

  {
    when = "focusedView == 'workbench.explorer.fileView'";
    key = "ctrl+shift+e";
    command = "workbench.action.focusActiveEditorGroup";
  }
  {
    when = "focusedView != 'workbench.explorer.fileView'";
    key = "ctrl+shift+e";
    command = "workbench.files.action.showActiveFileInExplorer";
  }
  {
    when = "viewContainer.workbench.view.explorer.enabled";
    key = "ctrl+shift+e";
    command = "-workbench.view.explorer";
  }

  {
    when = "";
    key = "ctrl+shift+a";
    command = "tabnine.chat.focus";
  }
  {
    when = "editorTextFocus && !editorReadonly";
    key = "ctrl+shift+a";
    command = "-editor.action.blockComment";
  }

  {
    when = "editorTextFocus && !editorReadonly";
    key = "ctrl+shift+/";
    command = "editor.action.blockComment";
  }
  {
    when = "editorTextFocus && !editorReadonly";
    key = "ctrl+/";
    command = "editor.action.commentLine";
  }

  {
    key = "ctrl+enter";
    command = "workbench.action.showCommands";
  }
  {
    key = "ctrl+tab";
    command = "workbench.action.toggleSidebarVisibility";
  }
  {
    key = "ctrl+b";
    command = "-workbench.action.toggleSidebarVisibility";
  }

  {
    when = "inQuickOpen == true";
    key = "ctrl+t";
    command = "workbench.action.focusActiveEditorGroup";
  }
  {
    when = "inQuickOpen == false";
    key = "ctrl+t";
    command = "workbench.action.quickOpen";
  }
  {
    key = "ctrl+t";
    command = "-workbench.action.showAllSymbols";
  }

  {
    key = "ctrl+9";
    command = "workbench.action.openEditorAtIndex9";
  }
  {
    key = "ctrl+9";
    command = "-workbench.action.lastEditorInGroup";
  }

  {
    key = "ctrl+8";
    command = "workbench.action.openEditorAtIndex8";
  }
  {
    key = "ctrl+8";
    command = "-workbench.action.focusEighthEditorGroup";
  }

  {
    key = "ctrl+7";
    command = "workbench.action.openEditorAtIndex7";
  }
  {
    key = "ctrl+7";
    command = "-workbench.action.focusSeventhEditorGroup";
  }

  {
    key = "ctrl+6";
    command = "workbench.action.openEditorAtIndex6";
  }
  {
    key = "ctrl+6";
    command = "-workbench.action.focusSixthEditorGroup";
  }

  {
    key = "ctrl+5";
    command = "workbench.action.openEditorAtIndex5";
  }
  {
    key = "ctrl+5";
    command = "-workbench.action.focusFifthEditorGroup";
  }

  {
    key = "ctrl+4";
    command = "workbench.action.openEditorAtIndex4";
  }
  {
    key = "ctrl+4";
    command = "-workbench.action.focusFourthEditorGroup";
  }

  {
    key = "ctrl+3";
    command = "workbench.action.openEditorAtIndex3";
  }
  {
    key = "ctrl+3";
    command = "-workbench.action.focusThirdEditorGroup";
  }

  {
    key = "ctrl+2";
    command = "workbench.action.openEditorAtIndex2";
  }
  {
    key = "ctrl+2";
    command = "-workbench.action.focusSecondEditorGroup";
  }

  {
    key = "ctrl+1";
    command = "workbench.action.openEditorAtIndex1";
  }
  {
    key = "ctrl+1";
    command = "-workbench.action.focusFirstEditorGroup";
  }
]
