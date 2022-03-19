const Products = require("../examples/products.json");

module.exports = {
  // ec6 -> all:all
  all(req, res, next) {
    res.json(Products);
  },
};
