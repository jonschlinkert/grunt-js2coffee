
###
Clone native types.
###
clone = (val) ->
  switch kindOf(val)
    when "Object"
      cloneObject val
    when "Array"
      cloneArray val
    when "RegExp"
      cloneRegExp val
    when "Date"
      cloneDate val
    else
      val
cloneObject = (source) ->
  if isPlainObject(source)
    mixIn {}, source
  else
    source
cloneRegExp = (r) ->
  flags = ""
  flags += (if r.multiline then "m" else "")
  flags += (if r.global then "g" else "")
  flags += (if r.ignorecase then "i" else "")
  new RegExp(r.source, flags)
cloneDate = (date) ->
  new Date(+date)
cloneArray = (arr) ->
  arr.slice()
kindOf = require("./kindOf")
isPlainObject = require("./isPlainObject")
mixIn = require("../object/mixIn")
module.exports = clone