define ["./MAX_INT"], (MAX_INT) ->
  
  ###
  "Convert" value into an 31-bit unsigned integer (since 1 bit is used for sign).
  IMPORTANT: value wil wrap at 2^31, if negative will return 0.
  ###
  toUInt31 = (val) ->
    (if (val <= 0) then 0 else ((if val > MAX_INT then ~~(val % (MAX_INT + 1)) else ~~val)))
  toUInt31
