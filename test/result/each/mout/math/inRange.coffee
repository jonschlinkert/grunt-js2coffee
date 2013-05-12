
###
Checks if value is inside the range.
###
inRange = (val, min, max, threshold) ->
  threshold = threshold or 0
  val + threshold >= min and val - threshold <= max
module.exports = inRange