define ["./indexOf"], (indexOf) ->
  
  ###
  Remove a single item from the array.
  (it won't remove duplicates, just a single item)
  ###
  remove = (arr, item) ->
    idx = indexOf(arr, item)
    arr.splice idx, 1  if idx isnt -1
  remove
