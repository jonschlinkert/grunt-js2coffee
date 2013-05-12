define ->
  
  ###
  Bitwise circular shift left
  http://en.wikipedia.org/wiki/Circular_shift
  ###
  rol = (val, shift) ->
    (val << shift) | (val >> (32 - shift))
  rol
