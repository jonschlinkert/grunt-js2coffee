
###
Encode object into a query string.
###
encode = (obj) ->
  query = []
  forOwn obj, (val, key) ->
    query.push key + "=" + encodeURIComponent(val)

  (if (query.length) then "?" + query.join("&") else "")
forOwn = require("../object/forOwn")
module.exports = encode