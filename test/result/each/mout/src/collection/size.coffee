define ["../lang/isArray", "../object/size"], (isArray, objSize) ->
  
  ###
  Get collection size
  ###
  size = (list) ->
    return 0  unless list
    return list.length  if isArray(list)
    objSize list
  size
