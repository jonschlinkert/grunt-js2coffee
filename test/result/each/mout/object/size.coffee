
###
Get object size
###
size = (obj) ->
  count = 0
  forOwn obj, ->
    count++

  count
forOwn = require("./forOwn")
module.exports = size