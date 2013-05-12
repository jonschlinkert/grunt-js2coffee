
###
Returns minimum value inside object.
###
min = (obj, iterator) ->
  arrMin values(obj), iterator
arrMin = require("../array/min")
values = require("./values")
module.exports = min