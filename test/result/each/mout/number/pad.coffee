
###
Add padding zeros if n.length < minLength.
###
pad = (n, minLength) ->
  lpad "" + n, minLength, "0"
lpad = require("../string/lpad")
module.exports = pad