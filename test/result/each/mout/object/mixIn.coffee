
###
Combine properties from all the objects into first one.
- This method affects target object in place, if you want to create a new Object pass an empty object as first param.
@param {object} target    Target Object
@param {...object} objects    Objects to be combined (0...n objects).
@return {object} Target Object.
###
mixIn = (target, objects) ->
  i = 0
  n = arguments_.length
  obj = undefined
  while ++i < n
    obj = arguments_[i]
    forOwn obj, copyProp, target  if obj?
  target
copyProp = (val, key) ->
  this[key] = val
forOwn = require("./forOwn")
module.exports = mixIn