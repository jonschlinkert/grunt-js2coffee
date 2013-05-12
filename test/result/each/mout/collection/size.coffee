
###
Get collection size
###
size = (list) ->
  return 0  unless list
  return list.length  if isArray(list)
  objSize list
isArray = require("../lang/isArray")
objSize = require("../object/size")
module.exports = size