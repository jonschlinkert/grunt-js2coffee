
###
Round value up with a custom radix.
###
ceil = (val, step) ->
  step = Math.abs(step or 1)
  Math.ceil(val / step) * step
module.exports = ceil