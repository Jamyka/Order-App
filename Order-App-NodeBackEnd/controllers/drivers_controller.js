const Driver = require("../models/driver");
module.exports = {
  all(req, res, next) {
    const limit = parseInt(req.query.limit) || "";
    Driver.find({})
      .limit(limit)
      .then((drivers) => res.status(200).send(drivers))
      .catch(next);
  },
  create_driver(req, res, next) {
    const driverProps = req.body;
    //query mongoose
    Driver.create(driverProps)
      .then((driver) => res.status(201).send(driver))
      .catch(next);
  },
  edit(req, res, next) {
    const driverId = req.params.id;
    const driverProps = req.body;

    Driver.findByIdAndUpdate({ _id: driverId }, driverProps)
      .then(() => Driver.findById({ _id: driverId }))
      .then((driver) => res.status(200).send(driver))
      .catch(next);
  },
  delete(req, res, next) {
    const driverId = req.params.id;
    Driver.findByIdAndRemove({ _id: driverId })
      .then((driver) => res.status(204).send(driver))
      .catch(next);
  },
  details(req, res, next) {
    const driverId = req.params.id;

    Driver.findById({ _id: driverId })
      .then((driver) => res.status(200).send(driver))
      .catch(next);
  },
};
