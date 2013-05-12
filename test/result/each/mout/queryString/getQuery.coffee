
###
Gets full query as string with all special chars decoded.
###
getQuery = (url) ->
  url = url.replace(/#.*/, "") #removes hash (to avoid getting hash query)
  queryString = /\?[a-zA-Z0-9\=\&\%\$\-\_\.\+\!\*\'\(\)\,]+/.exec(url) #valid chars according to: http://www.ietf.org/rfc/rfc1738.txt
  (if (queryString) then decodeURIComponent(queryString[0]) else "")
module.exports = getQuery