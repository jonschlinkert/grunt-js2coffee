define ["./isKind"], (isKind) ->
  
  ###
  ###
  isArgs = (if isKind(arguments, "Arguments") then (val) ->
    isKind val, "Arguments"
   else (val) ->
    
    # Arguments is an Object on IE7
    !!(val and Object::hasOwnProperty.call(val, "callee"))
  )
  isArgs
