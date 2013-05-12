
###
Get object values
###
values = (obj) ->
  vals = []
  forOwn obj, (val, key) ->
    vals.push val

  vals
forOwn = require("./forOwn")
module.exports = values