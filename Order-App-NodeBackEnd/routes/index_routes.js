const express = require("express");

module.exports = (app) => {
  app.get("/", (req, res) => {
    console.log(req.path);
    // console.log(req.hostname);
    res.send("Welcome to our web service");
  });
};
