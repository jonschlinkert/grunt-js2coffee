define ->
  checkDontEnum = ->
    _dontEnums = ["toString", "toLocaleString", "valueOf", "hasOwnProperty", "isPrototypeOf", "propertyIsEnumerable", "constructor"]
    _hasDontEnumBug = true
    for key of toString: null
      _hasDontEnumBug = false
  
  ###
  Similar to Array/forEach but works over object properties and fixes Don't
  Enum bug on IE.
  based on: http://whattheheadsaid.com/2010/10/a-safer-object-keys-compatibility-implementation
  ###
  forIn = (obj, fn, thisObj) ->
    key = undefined
    i = 0
    
    # no need to check if argument is a real object that way we can use
    # it for arrays, functions, date, etc.
    
    #post-pone check till needed
    checkDontEnum()  unless _hasDontEnumBug?
    for key of obj
      break  if exec(fn, obj, key, thisObj) is false
    
    # since we aren't using hasOwn check we need to make sure the
    # property was overwritten
    break  if exec(fn, obj, key, thisObj) is false  if obj[key] isnt Object::[key]  while key = _dontEnums[i++]  if _hasDontEnumBug
  exec = (fn, obj, key, thisObj) ->
    fn.call thisObj, obj[key], key, obj
  _hasDontEnumBug = undefined
  _dontEnums = undefined
  forIn
