
###
Get current time in miliseconds
###
now = (if (typeof Date.now is "function") then Date.now else ->
  +(new Date())
)
module.exports = now