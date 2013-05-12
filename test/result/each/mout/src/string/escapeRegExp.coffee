define ["../lang/toString"], (toString) ->
  
  ###
  Escape RegExp string chars.
  ###
  escapeRegExp = (str) ->
    str = toString(str)
    str.replace ESCAPE_CHARS, "\\$&"
  ESCAPE_CHARS = /[\\.+*?\^$\[\](){}\/'#]/g
  escapeRegExp
