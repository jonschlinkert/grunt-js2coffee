
###
checks if a object contains all given properties/values
###
matches = (target, props) ->
  
  # can't use "object/every" because of circular dependency
  result = true
  forOwn props, (val, key) ->
    
    # break loop at first difference
    result = false  if target[key] isnt val

  result
forOwn = require("./forOwn")
module.exports = matches