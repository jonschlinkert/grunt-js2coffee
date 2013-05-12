define ["./indexOf", "./filter"], (indexOf, filter) ->
  
  ###
  @return {array} Array of unique items
  ###
  unique = (arr) ->
    filter arr, isUnique
  isUnique = (item, i, arr) ->
    indexOf(arr, item, i + 1) is -1
  unique
