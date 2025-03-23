(() => {
  Object.defineProperty(CSSStyleDeclaration.prototype, "top", {
    set: function(x) {
      console.log(x, this);
      switch (true) {
        case Object.is("22px", this.height) && Object.is("22px", this.lineHeight):
          return this.setProperty("top", ((parseInt(x) / 22) * 20) + "px");
        default:
          return this.setProperty("top", x);
      }
    }
  });

  /*
  const original = window.outerHeight;

  Object.defineProperty(window, "outerHeight", {
    get: function() {
      return original + 1000;
    }
  });
  */
})();
