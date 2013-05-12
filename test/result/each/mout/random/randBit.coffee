
###
Returns random bit (0 or 1)
###
randomBit = ->
  (if random() > 0.5 then 1 else 0)
random = require("./random")
module.exports = randomBit