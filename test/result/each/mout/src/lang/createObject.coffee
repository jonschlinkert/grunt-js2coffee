define ["../object/mixIn"], (mixIn) ->
  
  ###
  Create Object using prototypal inheritance and setting custom properties.
  - Mix between Douglas Crockford Prototypal Inheritance <http://javascript.crockford.com/prototypal.html> and the EcmaScript 5 `Object.create()` method.
  @param {object} parent    Parent Object.
  @param {object} [props] Object properties.
  @return {object} Created object.
  ###
  createObject = (parent, props) ->
    F = ->
    F:: = parent
    mixIn new F(), props
  createObject
