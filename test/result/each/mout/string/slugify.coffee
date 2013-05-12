
###
Convert to lower case, remove accents, remove non-word chars and
replace spaces with the specified delimeter.
Does not split camelCase text.
###
slugify = (str, delimeter) ->
  str = toString(str)
  delimeter = "-"  unless delimeter?
  str = replaceAccents(str)
  str = removeNonWord(str)
  #should come after removeNonWord
  #replace spaces with delimeter
  str = trim(str).replace(RegExp(" +", "g"), delimeter).toLowerCase()
  str
toString = require("../lang/toString")
replaceAccents = require("./replaceAccents")
removeNonWord = require("./removeNonWord")
trim = require("./trim")
module.exports = slugify