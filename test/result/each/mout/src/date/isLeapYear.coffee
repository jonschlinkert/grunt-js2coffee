define ["../lang/isDate"], (isDate) ->
  
  ###
  checks if it's a leap year
  ###
  isLeapYear = (fullYear) ->
    fullYear = fullYear.getFullYear()  if isDate(fullYear)
    fullYear % 400 is 0 or (fullYear % 100 isnt 0 and fullYear % 4 is 0)
  isLeapYear
