
###
Returns a random element from the supplied arguments
or from the array (if single argument is an array).
###
choice = (items) ->
  target = (if (arguments.length is 1 and isArray(items)) then items else arguments)
  target[randInt(0, target.length - 1)]
randInt = require("./randInt")
isArray = require("../lang/isArray")
module.exports = choice