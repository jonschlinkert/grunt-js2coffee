
###
Converts argument into a valid iterator.
Used internally on most array/object/collection methods that receives a
callback/iterator providing a shortcut syntax.
###
makeIterator = (src, thisObj) ->
  switch typeof src
    when "object"
      
      # typeof null == "object"
      (if (src?) then (val, key, target) ->
        deepMatches val, src
       else src)
    when "string", "number"
      prop src
    when "function"
      if typeof thisObj is "undefined"
        src
      else
        (val, i, arr) ->
          src.call thisObj, val, i, arr
    else
      src
prop = require("./prop")
deepMatches = require("../object/deepMatches")
module.exports = makeIterator