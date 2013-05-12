define ->
  
  ###
  Bitwise circular shift right
  http://en.wikipedia.org/wiki/Circular_shift
  ###
  ror = (val, shift) ->
    (val >> shift) | (val << (32 - shift))
  ror
