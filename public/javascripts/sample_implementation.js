var SampleImplementation = {
  doSomething : function(input) {
    this.makeSomeAjaxCall(input);
    var output = input + input;
    return output;
  },

  makeSomeAjaxCall : function(vars) {
    // do something complicated
  }
}