define ["./indexOf"], (indexOf) ->
  
  ###
  If array contains values.
  ###
  contains = (arr, val) ->
    indexOf(arr, val) isnt -1
  contains
