jasmine.Matchers.prototype.toFail = function(msg) {
  msg = msg || "Failure";
  return this.report(false, msg);
};
