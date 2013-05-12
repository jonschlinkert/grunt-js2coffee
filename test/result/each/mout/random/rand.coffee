
###
Returns random number inside range
###
rand = (min, max) ->
  min = (if not min? then MIN_INT else min)
  max = (if not max? then MAX_INT else max)
  min + (max - min) * random()
random = require("./random")
MIN_INT = require("../number/MIN_INT")
MAX_INT = require("../number/MAX_INT")
module.exports = rand