define ->
  
  ###
  Returns a function that gets a property of the passed object
  ###
  prop = (name) ->
    (obj) ->
      obj[name]
  prop
