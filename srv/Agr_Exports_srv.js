const cds = require("@sap/cds");

class AgriExports extends cds.ApplicationService {
  init() {
    this.on("ReviewState", async (req) => {
      console.log(req.data, "Action");
      console.log("reached");
    });
    return super.init();
  }
}

module.exports = { AgriExports };
