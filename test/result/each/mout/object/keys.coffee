forOwn = require("./forOwn")

###
Get object keys
###
keys = Object.keys or (obj) ->
  keys = []
  forOwn obj, (val, key) ->
    keys.push key

  keys

module.exports = keys