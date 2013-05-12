isEmpty = (val) ->
  unless val?
    
    # typeof null == 'object' so we check it first
    false
  else if typeof val is "string" or isArray(val)
    not val.length
  else if typeof val is "object" or typeof val is "function"
    result = true
    forOwn val, ->
      result = false
      false # break loop

    result
  else
    false
forOwn = require("../object/forOwn")
isArray = require("./isArray")
module.exports = isEmpty