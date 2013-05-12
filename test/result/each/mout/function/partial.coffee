slice = (arr, offset) ->
  Array::slice.call arr, offset or 0

###
Creates a partially applied function.
###
partial = (fn, var_args) ->
  argsArr = slice(arguments, 1) #curried args
  ->
    fn.apply this, argsArr.concat(slice(arguments))
module.exports = partial