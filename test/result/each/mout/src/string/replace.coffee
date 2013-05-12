define ["../lang/toString", "../lang/toArray"], (toString, toArray) ->
  
  ###
  Replace string(s) with the replacement(s) in the source.
  ###
  replace = (str, search, replacements) ->
    str = toString(str)
    search = toArray(search)
    replacements = toArray(replacements)
    searchLength = search.length
    replacementsLength = replacements.length
    throw new Error("Unequal number of searches and replacements")  if replacementsLength isnt 1 and searchLength isnt replacementsLength
    i = -1
    
    # Use the first replacement for all searches if only one
    # replacement is provided
    str = str.replace(search[i], replacements[(if (replacementsLength is 1) then 0 else i)])  while ++i < searchLength
    str
  replace
