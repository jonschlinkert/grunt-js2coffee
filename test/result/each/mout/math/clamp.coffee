
###
Clamps value inside range.
###
clamp = (val, min, max) ->
  (if val < min then min else ((if val > max then max else val)))
module.exports = clamp