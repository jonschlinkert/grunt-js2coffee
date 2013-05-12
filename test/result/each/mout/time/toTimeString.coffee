
###
Format timestamp into a time string.
###
toTimeString = (ms) ->
  h = (if ms < HOUR then 0 else countSteps(ms, HOUR))
  m = (if ms < MINUTE then 0 else countSteps(ms, MINUTE, 60))
  s = (if ms < SECOND then 0 else countSteps(ms, SECOND, 60))
  str = ""
  str += (if h then h + ":" else "")
  str += pad(m, 2) + ":"
  str += pad(s, 2)
  str
countSteps = require("../math/countSteps")
pad = require("../number/pad")
HOUR = 3600000
MINUTE = 60000
SECOND = 1000
module.exports = toTimeString