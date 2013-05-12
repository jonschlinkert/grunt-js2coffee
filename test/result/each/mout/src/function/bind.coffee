define ->
  slice = (arr, offset) ->
    Array::slice.call arr, offset or 0
  
  ###
  Return a function that will execute in the given context, optionally adding any additional supplied parameters to the beginning of the arguments collection.
  @param {Function} fn  Function.
  @param {object} context   Execution context.
  @param {rest} args    Arguments (0...n arguments).
  @return {Function} Wrapped Function.
  ###
  bind = (fn, context, args) ->
    argsArr = slice(arguments, 2) #curried args
    ->
      fn.apply context, argsArr.concat(slice(arguments))
  bind
