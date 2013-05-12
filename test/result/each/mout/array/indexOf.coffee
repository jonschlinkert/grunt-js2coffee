
###
Array.indexOf
###
indexOf = (arr, item, fromIndex) ->
  fromIndex = fromIndex or 0
  return -1  unless arr?
  len = arr.length
  i = (if fromIndex < 0 then len + fromIndex else fromIndex)
  while i < len
    
    # we iterate over sparse items since there is no way to make it
    # work properly on IE 7-8. see #64
    return i  if arr[i] is item
    i++
  -1
module.exports = indexOf