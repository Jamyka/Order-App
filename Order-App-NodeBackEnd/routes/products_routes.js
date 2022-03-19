const products_controller = require("../controllers/products_controller");

module.exports = (app) => {
  app.get("/api/v1/products/popular", products_controller.all);
};
