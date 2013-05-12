
###
Returns an Array of numbers inside range.
###
range = (start, stop, step) ->
  unless stop?
    stop = start
    start = 0
  step = step or 1
  result = []
  nSteps = countSteps(stop - start, step)
  i = start
  while i <= stop
    result.push i
    i += step
  result
countSteps = require("../math/countSteps")
module.exports = range