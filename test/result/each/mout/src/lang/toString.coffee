define ->
  
  ###
  Typecast a value to a String, using an empty string value for null or
  undefined.
  ###
  toString = (val) ->
    (if not val? then "" else val.toString())
  toString
