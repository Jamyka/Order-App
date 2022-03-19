const express = require("express");
const cors = require("cors");
const index_routes = require("./routes/index_routes");
const app = express();

const productRoutes = require("./routes/products_routes");

//
app.use(express.json());
app.use(cors());
app.use(express.static("uploads"));

index_routes(app);
productRoutes(app);

//
app.use((err, req, res, next) => {
  res.status(422).send({ error: err.message });
});
module.exports = app;
