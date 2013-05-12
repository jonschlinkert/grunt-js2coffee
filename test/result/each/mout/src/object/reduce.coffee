define ["./forOwn", "./size"], (forOwn, size) ->
  
  ###
  Object reduce
  ###
  reduce = (obj, callback, memo, thisObj) ->
    initial = arguments.length > 2
    throw new Error("reduce of empty object with no initial value")  if not size(obj) and not initial
    forOwn obj, (value, key, list) ->
      unless initial
        memo = value
        initial = true
      else
        memo = callback.call(thisObj, memo, value, key, list)

    memo
  reduce
