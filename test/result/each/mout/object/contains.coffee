
###
Check if object contains value
###
contains = (obj, needle) ->
  some obj, (val) ->
    val is needle

some = require("./some")
module.exports = contains