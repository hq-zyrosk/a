{
  "rust-analyzer.statusBar.showStatusBar" = {
    "documentSelector" = [
      {
        "language" = "rust";
      }
      {
        "pattern" = "**/Cargo.toml";
      }
      {
        "pattern" = "**/Cargo.lock";
      }
      {
        "pattern" = "extension-output-rust-lang.rust-analyzer*";
        "scheme" = "output";
      }
    ];
  };
  "rust-analyzer.rustfmt.extraArgs" = [
    "--color"
    "always"
    "--config-path"
    "\${workspaceFolder}/rustfmt.toml"
    "--edition"
    "2024"
    "--emit"
    "stdout"
    "--error-on-unformatted"
    "--skip-children"
    "--unstable-features"
  ];
  "rust-analyzer.runnables.problemMatcher" = [
    "$rustc"
  ];
  "rust-analyzer.runnables.extraTestBinaryArgs" = [
    "--show-output"
  ];
  "rust-analyzer.diagnostics.remapPrefix" = {
    "error" = "error";
    "file" = "file";
    "message" = "message";
    "note" = "note";
    "warning" = "warning";
  };
  "rust-analyzer.completion.snippets.custom" = {
    "Arc::new" = {
      "body" = "Arc::new(\${receiver})";
      "description" = "Put the expression into an `Arc`";
      "postfix" = "arc";
      "requires" = "std::sync::Arc";
      "scope" = "expr";
    };
    "Box::pin" = {
      "body" = "Box::pin(\${receiver})";
      "description" = "Put the expression into a pinned `Box`";
      "postfix" = "pinbox";
      "requires" = "std::boxed::Box";
      "scope" = "expr";
    };
    "Err" = {
      "body" = "Err(\${receiver})";
      "description" = "Wrap the expression in a `Result::Err`";
      "postfix" = "err";
      "scope" = "expr";
    };
    "Ok" = {
      "body" = "Ok(\${receiver})";
      "description" = "Wrap the expression in a `Result::Ok`";
      "postfix" = "ok";
      "scope" = "expr";
    };
    "Rc::new" = {
      "body" = "Rc::new(\${receiver})";
      "description" = "Put the expression into an `Rc`";
      "postfix" = "rc";
      "requires" = "std::rc::Rc";
      "scope" = "expr";
    };
    "Some" = {
      "body" = "Some(\${receiver})";
      "description" = "Wrap the expression in an `Option::Some`";
      "postfix" = "some";
      "scope" = "expr";
    };
  };
  "rust-analyzer.completion.autoimport.exclude" = [
    {
      "path" = "core::borrow::Borrow";
      "type" = "methods";
    }
    {
      "path" = "core::borrow::BorrowMut";
      "type" = "methods";
    }
  ];
  "rust-analyzer.check.extraArgs" = [
    "--"
    "-W"
    "clippy::all"
    "-W"
    "clippy::pedantic"
    "-W"
    "clippy::nursery"
    "-W"
    "clippy::cargo"
  ];
  "rust-analyzer.cargo.cfgs" = [
    "debug_assertions"
    "miri"
  ];
  "rust-analyzer.assist.emitMustUse" = true;
  "rust-analyzer.assist.expressionFillDefault" = "default";
  "rust-analyzer.assist.termSearch.borrowcheck" = true;
  "rust-analyzer.assist.termSearch.fuel" = 4096;
  "rust-analyzer.cachePriming.enable" = true;
  "rust-analyzer.cachePriming.numThreads" = "logical";
  "rust-analyzer.cargo.allTargets" = true;
  "rust-analyzer.cargo.autoreload" = true;
  "rust-analyzer.cargo.buildScripts.enable" = true;
  "rust-analyzer.cargo.buildScripts.invocationStrategy" = "once";
  "rust-analyzer.cargo.buildScripts.overrideCommand" = null;
  "rust-analyzer.cargo.buildScripts.rebuildOnSave" = true;
  "rust-analyzer.cargo.buildScripts.useRustcWrapper" = true;
  "rust-analyzer.cargo.extraArgs" = [];
  "rust-analyzer.cargo.extraEnv" = {};
  "rust-analyzer.cargo.features" = [];
  "rust-analyzer.cargo.noDefaultFeatures" = true;
  "rust-analyzer.cargo.sysroot" = "discover";
  "rust-analyzer.cargo.sysrootSrc" = null;
  "rust-analyzer.cargo.target" = null;
  "rust-analyzer.cargo.targetDir" = null;
  "rust-analyzer.cfg.setTest" = true;
  "rust-analyzer.check.allTargets" = true;
  "rust-analyzer.check.command" = "clippy";
  "rust-analyzer.check.extraEnv" = {};
  "rust-analyzer.check.features" = [];
  "rust-analyzer.check.ignore" = [];
  "rust-analyzer.check.invocationStrategy" = "once";
  "rust-analyzer.check.noDefaultFeatures" = true;
  "rust-analyzer.check.overrideCommand" = null;
  "rust-analyzer.check.targets" = [];
  "rust-analyzer.check.workspace" = true;
  "rust-analyzer.checkOnSave" = true;
  "rust-analyzer.completion.addSemicolonToUnit" = true;
  "rust-analyzer.completion.autoAwait.enable" = true;
  "rust-analyzer.completion.autoimport.enable" = true;
  "rust-analyzer.completion.autoIter.enable" = true;
  "rust-analyzer.completion.autoself.enable" = true;
  "rust-analyzer.completion.callable.snippets" = "fill_arguments";
  "rust-analyzer.completion.excludeTraits" = [];
  "rust-analyzer.completion.fullFunctionSignatures.enable" = true;
  "rust-analyzer.completion.hideDeprecated" = false;
  "rust-analyzer.completion.limit" = 4096;
  "rust-analyzer.completion.postfix.enable" = true;
  "rust-analyzer.completion.privateEditable.enable" = true;
  "rust-analyzer.completion.termSearch.enable" = true;
  "rust-analyzer.completion.termSearch.fuel" = 4096;
  "rust-analyzer.debug.buildBeforeRestart" = false;
  "rust-analyzer.debug.engine" = "llvm-vs-code-extensions.lldb-dap";
  "rust-analyzer.debug.engineSettings" = {};
  "rust-analyzer.debug.openDebugPane" = true;
  "rust-analyzer.debug.sourceFileMap" = "auto";
  "rust-analyzer.diagnostics.disabled" = [];
  "rust-analyzer.diagnostics.enable" = true;
  "rust-analyzer.diagnostics.experimental.enable" = false;
  "rust-analyzer.diagnostics.previewRustcOutput" = true;
  "rust-analyzer.diagnostics.styleLints.enable" = true;
  "rust-analyzer.diagnostics.useRustcErrorCode" = true;
  "rust-analyzer.diagnostics.warningsAsHint" = [];
  "rust-analyzer.diagnostics.warningsAsInfo" = [];
  "rust-analyzer.files.exclude" = [];
  "rust-analyzer.files.watcher" = "server";
  "rust-analyzer.highlightRelated.breakPoints.enable" = true;
  "rust-analyzer.highlightRelated.closureCaptures.enable" = true;
  "rust-analyzer.highlightRelated.exitPoints.enable" = true;
  "rust-analyzer.highlightRelated.references.enable" = true;
  "rust-analyzer.highlightRelated.yieldPoints.enable" = true;
  "rust-analyzer.hover.actions.debug.enable" = true;
  "rust-analyzer.hover.actions.enable" = true;
  "rust-analyzer.hover.actions.gotoTypeDef.enable" = true;
  "rust-analyzer.hover.actions.implementations.enable" = true;
  "rust-analyzer.hover.actions.references.enable" = true;
  "rust-analyzer.hover.actions.run.enable" = true;
  "rust-analyzer.hover.actions.updateTest.enable" = true;
  "rust-analyzer.hover.documentation.enable" = true;
  "rust-analyzer.hover.documentation.keywords.enable" = true;
  "rust-analyzer.hover.dropGlue.enable" = true;
  "rust-analyzer.hover.links.enable" = true;
  "rust-analyzer.hover.maxSubstitutionLength" = 64;
  "rust-analyzer.hover.memoryLayout.alignment" = "hexadecimal";
  "rust-analyzer.hover.memoryLayout.enable" = true;
  "rust-analyzer.hover.memoryLayout.niches" = true;
  "rust-analyzer.hover.memoryLayout.offset" = "hexadecimal";
  "rust-analyzer.hover.memoryLayout.size" = "both";
  "rust-analyzer.hover.show.enumVariants" = 64;
  "rust-analyzer.hover.show.fields" = 64;
  "rust-analyzer.hover.show.traitAssocItems" = 64;
  "rust-analyzer.imports.granularity.enforce" = true;
  "rust-analyzer.imports.granularity.group" = "one";
  "rust-analyzer.imports.group.enable" = true;
  "rust-analyzer.imports.merge.glob" = true;
  "rust-analyzer.imports.preferNoStd" = true;
  "rust-analyzer.imports.preferPrelude" = false;
  "rust-analyzer.imports.prefix" = "crate";
  "rust-analyzer.imports.prefixExternPrelude" = true;
  "rust-analyzer.initializeStopped" = false;
  "rust-analyzer.inlayHints.bindingModeHints.enable" = true;
  "rust-analyzer.inlayHints.chainingHints.enable" = true;
  "rust-analyzer.inlayHints.closingBraceHints.enable" = true;
  "rust-analyzer.inlayHints.closingBraceHints.minLines" = 1;
  "rust-analyzer.inlayHints.closureCaptureHints.enable" = true;
  "rust-analyzer.inlayHints.closureReturnTypeHints.enable" = "always";
  "rust-analyzer.inlayHints.closureStyle" = "rust_analyzer";
  "rust-analyzer.inlayHints.discriminantHints.enable" = "always";
  "rust-analyzer.inlayHints.expressionAdjustmentHints.enable" = "always";
  "rust-analyzer.inlayHints.expressionAdjustmentHints.hideOutsideUnsafe" = false;
  "rust-analyzer.inlayHints.expressionAdjustmentHints.mode" = "prefix";
  "rust-analyzer.inlayHints.genericParameterHints.const.enable" = true;
  "rust-analyzer.inlayHints.genericParameterHints.lifetime.enable" = true;
  "rust-analyzer.inlayHints.genericParameterHints.type.enable" = true;
  "rust-analyzer.inlayHints.implicitDrops.enable" = true;
  "rust-analyzer.inlayHints.implicitSizedBoundHints.enable" = true;
  "rust-analyzer.inlayHints.lifetimeElisionHints.enable" = "always";
  "rust-analyzer.inlayHints.lifetimeElisionHints.useParameterNames" = true;
  "rust-analyzer.inlayHints.maxLength" = 64;
  "rust-analyzer.inlayHints.parameterHints.enable" = true;
  "rust-analyzer.inlayHints.rangeExclusiveHints.enable" = true;
  "rust-analyzer.inlayHints.reborrowHints.enable" = "always";
  "rust-analyzer.inlayHints.renderColons" = true;
  "rust-analyzer.inlayHints.typeHints.enable" = true;
  "rust-analyzer.inlayHints.typeHints.hideClosureInitialization" = false;
  "rust-analyzer.inlayHints.typeHints.hideClosureParameter" = false;
  "rust-analyzer.inlayHints.typeHints.hideNamedConstructor" = false;
  "rust-analyzer.interpret.tests" = true;
  "rust-analyzer.joinLines.joinAssignments" = true;
  "rust-analyzer.joinLines.joinElseIf" = true;
  "rust-analyzer.joinLines.removeTrailingComma" = true;
  "rust-analyzer.joinLines.unwrapTrivialBlock" = true;
  "rust-analyzer.lens.debug.enable" = true;
  "rust-analyzer.lens.enable" = true;
  "rust-analyzer.lens.implementations.enable" = true;
  "rust-analyzer.lens.location" = "above_whole_item";
  "rust-analyzer.lens.references.adt.enable" = true;
  "rust-analyzer.lens.references.enumVariant.enable" = true;
  "rust-analyzer.lens.references.method.enable" = true;
  "rust-analyzer.lens.references.trait.enable" = true;
  "rust-analyzer.lens.run.enable" = true;
  "rust-analyzer.lens.updateTest.enable" = true;
  "rust-analyzer.linkedProjects" = [];
  "rust-analyzer.lru.capacity" = 1024;
  "rust-analyzer.lru.query.capacities" = {};
  "rust-analyzer.notifications.cargoTomlNotFound" = true;
  "rust-analyzer.numThreads" = "logical";
  "rust-analyzer.procMacro.attributes.enable" = true;
  "rust-analyzer.procMacro.enable" = true;
  "rust-analyzer.procMacro.ignored" = {};
  "rust-analyzer.procMacro.server" = "rust-analyzer";
  "rust-analyzer.references.excludeImports" = false;
  "rust-analyzer.references.excludeTests" = false;
  "rust-analyzer.restartServerOnConfigChange" = true;
  "rust-analyzer.runnables.askBeforeUpdateTest" = true;
  "rust-analyzer.runnables.command" = null;
  "rust-analyzer.runnables.extraArgs" = [];
  "rust-analyzer.runnables.extraEnv" = {};
  "rust-analyzer.rustc.source" = "discover";
  "rust-analyzer.rustfmt.overrideCommand" = null;
  "rust-analyzer.rustfmt.rangeFormatting.enable" = true;
  "rust-analyzer.semanticHighlighting.doc.comment.inject.enable" = true;
  "rust-analyzer.semanticHighlighting.nonStandardTokens" = true;
  "rust-analyzer.semanticHighlighting.operator.enable" = true;
  "rust-analyzer.semanticHighlighting.operator.specialization.enable" = true;
  "rust-analyzer.semanticHighlighting.punctuation.enable" = true;
  "rust-analyzer.semanticHighlighting.punctuation.separate.macro.bang" = true;
  "rust-analyzer.semanticHighlighting.punctuation.specialization.enable" = true;
  "rust-analyzer.semanticHighlighting.strings.enable" = true;
  "rust-analyzer.server.extraEnv" = {};
  "rust-analyzer.server.path" = "rust-analyzer";
  "rust-analyzer.showDependenciesExplorer" = true;
  "rust-analyzer.showRequestFailedErrorNotification" = true;
  "rust-analyzer.showSyntaxTree" = true;
  "rust-analyzer.showUnlinkedFileNotification" = true;
  "rust-analyzer.signatureInfo.detail" = "full";
  "rust-analyzer.signatureInfo.documentation.enable" = true;
  "rust-analyzer.statusBar.clickAction" = "openLogs";
  "rust-analyzer.testExplorer" = true;
  "rust-analyzer.typing.continueCommentsOnNewline" = true;
  "rust-analyzer.typing.triggerChars" = "=.";
  "rust-analyzer.vfs.extraIncludes" = [];
  "rust-analyzer.workspace.discoverConfig" = {};
  "rust-analyzer.workspace.symbol.search.kind" = "all_symbols";
  "rust-analyzer.workspace.symbol.search.limit" = 256;
  "rust-analyzer.workspace.symbol.search.scope" = "workspace_and_dependencies";
  "[rust]" = {
    "editor.defaultFormatter" = "rust-lang.rust-analyzer";
  };
}
