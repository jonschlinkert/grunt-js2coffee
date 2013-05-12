
###
Remove HTML tags from string.
###
stripHtmlTags = (str) ->
  str = toString(str)
  str.replace /<[^>]*>/g, ""
toString = require("../lang/toString")
module.exports = stripHtmlTags