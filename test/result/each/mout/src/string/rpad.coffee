define ["../lang/toString", "./repeat"], (toString, repeat) ->
  
  ###
  Pad string with `char` if its' length is smaller than `minLen`
  ###
  rpad = (str, minLen, ch) ->
    str = toString(str)
    ch = ch or " "
    (if (str.length < minLen) then str + repeat(ch, minLen - str.length) else str)
  rpad
