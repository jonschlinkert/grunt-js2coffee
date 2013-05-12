
###
Check if both arguments are egal.
###
is = (x, y) ->
  
  # implementation borrowed from harmony:egal spec
  
  # 0 === -0, but they are not identical
  return x isnt 0 or 1 / x is 1 / y  if x is y
  
  # NaN !== NaN, but they are identical.
  # NaNs are the only non-reflexive value, i.e., if x !== x,
  # then x is a NaN.
  # isNaN is broken: it converts its argument to number, so
  # isNaN("foo") => true
  x isnt x and y isnt y
module.exports = is_