
###
Copy missing properties in the obj from the defaults.
###
fillIn = (obj, var_defaults) ->
  forEach Array::slice.call(arguments, 1), (base) ->
    forOwn base, (val, key) ->
      obj[key] = val  unless obj[key]?


  obj
forEach = require("../array/forEach")
forOwn = require("./forOwn")
module.exports = fillIn