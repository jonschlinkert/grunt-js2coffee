
###
Check if both values are not identical/egal
###
isnt = (x, y) ->
  not is_(x, y)
is_ = require("./is")
module.exports = isnt_