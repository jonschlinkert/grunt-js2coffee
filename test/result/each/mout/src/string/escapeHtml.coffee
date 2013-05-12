define ["../lang/toString"], (toString) ->
  
  ###
  Escapes a string for insertion into HTML.
  ###
  escapeHtml = (str) ->
    str = toString(str).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/'/g, "&#39;").replace(/"/g, "&quot;")
    str
  escapeHtml
