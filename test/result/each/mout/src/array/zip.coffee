define ["./max", "./pluck", "./map"], (max, pluck, map) ->
  getLength = (arr) ->
    (if not arr? then 0 else arr.length)
  
  ###
  Merges together the values of each of the arrays with the values at the
  corresponding position.
  ###
  zip = (arr) ->
    len = (if arr then max(map(arguments, getLength)) else 0)
    results = []
    i = -1
    item = undefined
    while ++i < len
      results.push map(arguments, (item) ->
        (if not item? then `undefined` else item[i])
      )
    results
  zip
