define ->
  
  ###
  Converts number into currency format
  ###
  currencyFormatter = create: ($nDecimalDigits, $decimalSeparator, $thousandsSeparator) ->
    format = (val, nDecimalDigits, decimalSeparator, thousandsSeparator) ->
      
      #defaults will be bound inside the closure, only way to replace
      #them is by creating a new instance (avoids undesired side-effect)
      nDecimalDigits = (if not nDecimalDigits? then $nDecimalDigits else nDecimalDigits)
      decimalSeparator = (if not decimalSeparator? then $decimalSeparator else decimalSeparator)
      thousandsSeparator = (if not thousandsSeparator? then $thousandsSeparator else thousandsSeparator)
      
      #can't use enforce precision since it returns a number and we are
      #doing a RegExp over the string
      fixed = val.toFixed(nDecimalDigits)
      
      #separate begin [$1], middle [$2] and decimal digits [$4]
      parts = new RegExp("^(-?\\d{1,3})((?:\\d{3})+)(\\.(\\d{" + nDecimalDigits + "}))?$").exec(fixed)
      if parts #val >= 1000 || val <= -1000
        parts[1] + parts[2].replace(/\d{3}/g, thousandsSeparator + "$&") + ((if parts[4] then decimalSeparator + parts[4] else ""))
      else
        fixed.replace ".", decimalSeparator

    
    #inception
    format.create = currencyFormatter.create
    format

  currencyFormatter.create 2, ".", ","
