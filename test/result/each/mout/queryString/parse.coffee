
###
Get query string, parses and decodes it.
###
parse = (url, shouldTypecast) ->
  decode getQuery(url), shouldTypecast
decode = require("./decode")
getQuery = require("./getQuery")
module.exports = parse