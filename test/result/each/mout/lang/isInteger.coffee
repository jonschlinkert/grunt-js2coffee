
###
Check if value is an integer
###
isInteger = (val) ->
  isNumber(val) and (val % 1 is 0)
isNumber = require("./isNumber")
module.exports = isInteger