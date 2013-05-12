define ["../string/lpad"], (lpad) ->
  
  ###
  Add padding zeros if n.length < minLength.
  ###
  pad = (n, minLength) ->
    lpad "" + n, minLength, "0"
  pad
