define ["./filter"], (filter) ->
  isValidString = (val) ->
    val? and val isnt ""
  
  ###
  Joins strings with the specified separator inserted between each value.
  Null values and empty strings will be excluded.
  ###
  join = (items, separator) ->
    separator = separator or ""
    filter(items, isValidString).join separator
  join
