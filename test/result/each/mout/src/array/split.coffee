define ->
  
  ###
  Split array into a fixed number of segments.
  ###
  split = (array, segments) ->
    segments = segments or 2
    results = []
    return results  unless array?
    minLength = Math.floor(array.length / segments)
    remainder = array.length % segments
    i = 0
    len = array.length
    segmentIndex = 0
    segmentLength = undefined
    while i < len
      segmentLength = minLength
      segmentLength++  if segmentIndex < remainder
      results.push array.slice(i, i + segmentLength)
      segmentIndex++
      i += segmentLength
    results
  split
