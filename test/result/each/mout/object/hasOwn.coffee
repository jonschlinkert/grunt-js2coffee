
###
Safer Object.hasOwnProperty
###
hasOwn = (obj, prop) ->
  Object::hasOwnProperty.call obj, prop
module.exports = hasOwn