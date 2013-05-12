
###
Return first non void argument
###
defaults = (var_args) ->
  find toArray(arguments_), nonVoid
nonVoid = (val) ->
  val?
toArray = require("./toArray")
find = require("../array/find")
module.exports = defaults