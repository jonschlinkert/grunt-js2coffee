
###
Remove a random item from the Array and return it
###
pick = (arr) ->
  return  if not arr? or not arr.length
  idx = randInt(0, arr.length - 1)
  arr.splice(idx, 1)[0]
randInt = require("../random/randInt")
module.exports = pick