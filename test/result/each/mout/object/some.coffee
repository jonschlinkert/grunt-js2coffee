
###
Object some
###
some = (obj, callback, thisObj) ->
  callback = makeIterator(callback, thisObj)
  result = false
  forOwn obj, (val, key) ->
    if callback(val, key, obj)
      result = true
      false # break

  result
forOwn = require("./forOwn")
makeIterator = require("../function/makeIterator_")
module.exports = some