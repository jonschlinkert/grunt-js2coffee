
###
Map collection values, returns Array.
###
map = (list, callback, thisObj) ->
  callback = makeIterator(callback, thisObj)
  
  # list.length to check array-like object, if not array-like
  # we simply map all the object values
  list = values(list)  if isObject(list) and not list.length?
  arrMap list, (val, key, list) ->
    callback val, key, list

isObject = require("../lang/isObject")
values = require("../object/values")
arrMap = require("../array/map")
makeIterator = require("../function/makeIterator_")
module.exports = map