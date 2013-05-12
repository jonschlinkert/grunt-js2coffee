
###
Returns random sign (-1 or 1)
###
randomSign = ->
  (if random() > 0.5 then 1 else -1)
random = require("./random")
module.exports = randomSign