
###
Object reject
###
reject = (obj, callback, thisObj) ->
  callback = makeIterator(callback, thisObj)
  filter obj, ((value, index, obj) ->
    not callback(value, index, obj)
  ), thisObj
filter = require("./filter")
makeIterator = require("../function/makeIterator_")
module.exports = reject