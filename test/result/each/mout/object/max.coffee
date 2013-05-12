
###
Returns maximum value inside object.
###
max = (obj, compareFn) ->
  arrMax values(obj), compareFn
arrMax = require("../array/max")
values = require("./values")
module.exports = max