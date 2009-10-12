describe("SampleImplementation", function () {
  describe(".doSomething", function () {
    it("should concatinate what was passed in", function() {
      expect(SampleImplementation.doSomething("foo ")).toEqual("foo foo ");
    });

    it("should use makeSomeAjaxCall with what is passed in", function() {
      spyOn(SampleImplementation, "makeSomeAjaxCall");
      SampleImplementation.doSomething("bar");
      expect(SampleImplementation.makeSomeAjaxCall).wasCalledWith("bar");
    });
  });

  describe(".makeSomeAjaxCall", function () {
    it("should not work", function() {
      expect("this assertion").toFail("not yet implemented");
    });
  });
});