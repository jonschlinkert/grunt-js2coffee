
###
Returns a function that composes multiple functions, passing results to
each other.
###
compose = ->
  fns = arguments
  (arg) ->
    
    # only cares about the first argument since the chain can only
    # deal with a single return value anyway. It should start from
    # the last fn.
    n = fns.length
    arg = fns[n].call(this, arg)  while n--
    arg
module.exports = compose