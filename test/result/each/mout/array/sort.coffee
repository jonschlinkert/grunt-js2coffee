
###
Merge sort (http://en.wikipedia.org/wiki/Merge_sort)
###
mergeSort = (arr, compareFn) ->
  unless arr?
    return []
  else return arr  if arr.length < 2
  compareFn = defaultCompare  unless compareFn?
  mid = undefined
  left = undefined
  right = undefined
  mid = ~~(arr.length / 2)
  left = mergeSort(arr.slice(0, mid), compareFn)
  right = mergeSort(arr.slice(mid, arr.length), compareFn)
  merge left, right, compareFn
defaultCompare = (a, b) ->
  (if a < b then -1 else ((if a > b then 1 else 0)))
merge = (left, right, compareFn) ->
  result = []
  while left.length and right.length
    if compareFn(left[0], right[0]) <= 0
      
      # if 0 it should preserve same order (stable)
      result.push left.shift()
    else
      result.push right.shift()
  result.push.apply result, left  if left.length
  result.push.apply result, right  if right.length
  result
module.exports = mergeSort