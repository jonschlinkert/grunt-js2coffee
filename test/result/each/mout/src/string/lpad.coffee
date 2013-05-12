define ["../lang/toString", "./repeat"], (toString, repeat) ->
  
  ###
  Pad string with `char` if its' length is smaller than `minLen`
  ###
  lpad = (str, minLen, ch) ->
    str = toString(str)
    ch = ch or " "
    (if (str.length < minLen) then repeat(ch, minLen - str.length) + str else str)
  lpad
