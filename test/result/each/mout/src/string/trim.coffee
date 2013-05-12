define ["../lang/toString", "./WHITE_SPACES", "./ltrim", "./rtrim"], (toString, WHITE_SPACES, ltrim, rtrim) ->
  
  ###
  Remove white-spaces from beginning and end of string.
  ###
  trim = (str, chars) ->
    str = toString(str)
    chars = chars or WHITE_SPACES
    ltrim rtrim(str, chars), chars
  trim
