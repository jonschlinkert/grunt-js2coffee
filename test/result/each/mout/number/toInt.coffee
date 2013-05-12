
###
"Convert" value into an 32-bit integer.
Works like `Math.floor` if val > 0 and `Math.ceil` if val < 0.
IMPORTANT: val will wrap at 2^31 and -2^31.
Perf tests: http://jsperf.com/vs-vs-parseint-bitwise-operators/7
###
toInt = (val) ->
  ~~val
module.exports = toInt