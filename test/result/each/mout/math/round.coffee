
###
Round number to a specific radix
###
round = (value, radix) ->
  radix = radix or 1 # default round 1
  Math.round(value / radix) * radix
module.exports = round