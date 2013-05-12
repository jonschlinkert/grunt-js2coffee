
###
###
throttle = (fn, delay) ->
  delayed = ->
    prev = now()
    timeout = null
    result = fn.apply(context, args)
  throttled = ->
    context = this
    args = arguments
    cur = now()
    diff = delay - (cur - prev)
    if diff <= 0
      clearTimeout timeout
      prev = cur
      result = fn.apply(context, args)
    else timeout = setTimeout(delayed, diff)  unless timeout
    result
  context = undefined
  timeout = undefined
  result = undefined
  args = undefined
  cur = undefined
  diff = undefined
  prev = 0
  throttled
now = require("../time/now")
module.exports = throttle