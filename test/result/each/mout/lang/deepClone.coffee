
###
Recursively clone native types.
###
deepClone = (val, instanceClone) ->
  switch kindOf(val)
    when "Object"
      cloneObject val, instanceClone
    when "Array"
      cloneArray val, instanceClone
    else
      clone val
cloneObject = (source, instanceClone) ->
  if isPlainObject(source)
    out = {}
    forOwn source, ((val, key) ->
      this[key] = deepClone(val, instanceClone)
    ), out
    out
  else if instanceClone
    instanceClone source
  else
    source
cloneArray = (arr, instanceClone) ->
  out = []
  i = -1
  n = arr.length
  val = undefined
  out[i] = deepClone(arr[i], instanceClone)  while ++i < n
  out
clone = require("./clone")
forOwn = require("../object/forOwn")
kindOf = require("./kindOf")
isPlainObject = require("./isPlainObject")
module.exports = deepClone