
###
Gets normalized ratio of value inside range.
###
norm = (val, min, max) ->
  (val - min) / (max - min)
module.exports = norm