
###
Set query string parameter value
###
setParam = (url, paramName, value) ->
  url = url or ""
  re = new RegExp("(\\?|&)" + paramName + "=[^&]*")
  param = paramName + "=" + encodeURIComponent(value)
  if re.test(url)
    url.replace re, "$1" + param
  else
    url += "?"  if url.indexOf("?") is -1
    url += "&"  if url.indexOf("=") isnt -1
    url + param
module.exports = setParam