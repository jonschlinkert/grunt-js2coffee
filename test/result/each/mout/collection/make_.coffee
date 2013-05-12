
###
internal method used to create other collection modules.
###
makeCollectionMethod = (arrMethod, objMethod, defaultReturn) ->
  ->
    args = Array::slice.call(arguments)
    return defaultReturn  unless args[0]?
    
    # array-like is treated as array
    (if (typeof args[0].length is "number") then arrMethod.apply(null, args) else objMethod.apply(null, args))
module.exports = makeCollectionMethod