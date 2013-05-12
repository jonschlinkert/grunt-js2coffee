
###
Inverse or collection/filter
###
reject = (list, iterator, thisObj) ->
  iterator = makeIterator(iterator, thisObj)
  filter list, ((value, index, list) ->
    not iterator(value, index, list)
  ), thisObj
filter = require("./filter")
makeIterator = require("../function/makeIterator_")
module.exports = reject