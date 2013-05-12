define ->
  
  ###
  Gets the "kind" of value. (e.g. "String", "Number", etc)
  ###
  kindOf = (val) ->
    if val is null
      "Null"
    else if val is UNDEF
      "Undefined"
    else
      _rKind.exec(_toString.call(val))[1]
  _rKind = /^\[object (.*)\]$/
  _toString = Object::toString
  UNDEF = undefined
  kindOf
