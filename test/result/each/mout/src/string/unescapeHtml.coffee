define ["../lang/toString"], (toString) ->
  
  ###
  Unescapes HTML special chars
  ###
  unescapeHtml = (str) ->
    str = toString(str).replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&#39;/g, "'").replace(/&quot;/g, "\"")
    str
  unescapeHtml
