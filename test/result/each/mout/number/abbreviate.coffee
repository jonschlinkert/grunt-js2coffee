
###
Abbreviate number if bigger than 1000. (eg: 2.5K, 17.5M, 3.4B, ...)
###
abbreviateNumber = (val, nDecimals, dict) ->
  nDecimals = (if nDecimals? then nDecimals else 1)
  dict = dict or _defaultDict
  val = enforcePrecision(val, nDecimals)
  str = undefined
  mod = undefined
  if val < 1000000
    mod = enforcePrecision(val / 1000, nDecimals)
    
    # might overflow to next scale during rounding
    str = (if mod < 1000 then mod + dict.thousand else 1 + dict.million)
  else if val < 1000000000
    mod = enforcePrecision(val / 1000000, nDecimals)
    str = (if mod < 1000 then mod + dict.million else 1 + dict.billion)
  else
    str = enforcePrecision(val / 1000000000, nDecimals) + dict.billion
  str
enforcePrecision = require("./enforcePrecision")
_defaultDict =
  thousand: "K"
  million: "M"
  billion: "B"

module.exports = abbreviateNumber