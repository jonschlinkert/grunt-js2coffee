define ->
  F = ->
  
  ###
  Do fn.apply on a constructor.
  ###
  ctorApply = (ctor, args) ->
    F:: = ctor::
    instance = new F()
    ctor.apply instance, args
    instance
  ctorApply
