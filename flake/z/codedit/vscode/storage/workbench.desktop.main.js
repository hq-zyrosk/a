(() => {
  Object.defineProperty(CSSStyleDeclaration.prototype, "lineHeight", {
    set: function(x) {
      switch (true) {
        case Object.is("22px", x):
          console.log(this);
          return this.setProperty("lineHeight", "16px");
        default:
          return this.setProperty("lineHeight", x);
      }
    }
  });

  Object.defineProperty(CSSStyleDeclaration.prototype, "height", {
    set: function(x) {
      switch (true) {
        case Object.is("22px", x):
          console.log(this);
          return this.setProperty("height", "16px");
        default:
          return this.setProperty("height", x);
      }
    }
  });

  Object.defineProperty(CSSStyleDeclaration.prototype, "top", {
    set: function(x) {
      switch (true) {
        case
          Object.is("16px", this.lineHeight) &&
          Object.is("16px", this.height) &&
          Object.is(3, this.length):
          console.log(this);
          return this.setProperty("top", ((parseInt(x) / 22) * 16) + "px");
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
