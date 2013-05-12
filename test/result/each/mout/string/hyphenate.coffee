
###
Replaces spaces with hyphens, split camelCase text, remove non-word chars, remove accents and convert to lower case.
###
hyphenate = (str) ->
  str = toString(str)
  str = unCamelCase(str)
  slugify str, "-"
toString = require("../lang/toString")
slugify = require("./slugify")
unCamelCase = require("./unCamelCase")
module.exports = hyphenate