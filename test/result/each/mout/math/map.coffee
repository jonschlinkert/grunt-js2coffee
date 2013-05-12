
###
Maps a number from one scale to another.
@example map(3, 0, 4, -1, 1) -> 0.5
###
map = (val, min1, max1, min2, max2) ->
  lerp norm(val, min1, max1), min2, max2
lerp = require("./lerp")
norm = require("./norm")
module.exports = map