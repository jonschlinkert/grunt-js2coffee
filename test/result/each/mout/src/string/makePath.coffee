define ["../array/join"], (join) ->
  
  ###
  Group arguments as path segments, if any of the args is `null` or an
  empty string it will be ignored from resulting path.
  ###
  makePath = (var_args) ->
    result = join(Array::slice.call(arguments), "/")
    result.replace /\/{2,}/g, "/"
  makePath
