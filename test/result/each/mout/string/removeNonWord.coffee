
###
Remove non-word chars.
###
removeNonWord = (str) ->
  str = toString(str)
  str.replace /[^0-9a-zA-Z\xC0-\xFF \-]/g, ""
toString = require("../lang/toString")
module.exports = removeNonWord