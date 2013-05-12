
###
Debounce callback execution
###
debounce = (fn, threshold, isAsap) ->
  debounced = ->
    delayed = ->
      result = fn.apply(context, args)  unless isAsap
      timeout = null
    args = arguments
    context = this
    if timeout
      clearTimeout timeout
    else result = fn.apply(context, args)  if isAsap
    timeout = setTimeout(delayed, threshold)
    result
  timeout = undefined
  result = undefined
  debounced
module.exports = debounce