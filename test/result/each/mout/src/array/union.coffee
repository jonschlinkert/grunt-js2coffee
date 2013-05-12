define ["./unique", "./append"], (unique, append) ->
  
  ###
  Concat multiple arrays and remove duplicates
  ###
  union = (arrs) ->
    results = []
    i = -1
    len = arguments_.length
    append results, arguments_[i]  while ++i < len
    unique results
  union
