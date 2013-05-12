define ["../lang/toString", "./WHITE_SPACES"], (toString, WHITE_SPACES) ->
  
  ###
  Remove chars from end of string.
  ###
  rtrim = (str, chars) ->
    str = toString(str)
    chars = chars or WHITE_SPACES
    end = str.length - 1
    charLen = chars.length
    found = true
    i = undefined
    c = undefined
    while found and end >= 0
      found = false
      i = -1
      c = str.charAt(end)
      while ++i < charLen
        if c is chars[i]
          found = true
          end--
          break
    (if (end >= 0) then str.substring(0, end + 1) else "")
  rtrim
