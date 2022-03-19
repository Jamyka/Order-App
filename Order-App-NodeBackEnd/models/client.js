const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const clientSchema = new Schema({
  fName: {
    type: String,
    required: true,
  },
  lName: {
    type: String,
    required: false,
  },
  email: {
    type: String,
    required: true,
  },
  phoneNumber: {
    type: Number,
    required: true,
  },
});
const Client = mongoose.model("client", clientSchema);
module.exports = Client;
