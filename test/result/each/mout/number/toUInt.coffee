
###
"Convert" value into a 32-bit unsigned integer.
IMPORTANT: Value will wrap at 2^32.
###
toUInt = (val) ->
  val >>> 0
module.exports = toUInt