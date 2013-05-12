
###
returns the total amount of days in the month (considering leap years)
###
totalDaysInMonth = (fullYear, monthIndex) ->
  if isDate(fullYear)
    date = fullYear
    year = date.getFullYear()
    monthIndex = date.getMonth()
  if monthIndex is 1 and isLeapYear(fullYear)
    29
  else
    DAYS_IN_MONTH[monthIndex]
isDate = require("../lang/isDate")
isLeapYear = require("./isLeapYear")
DAYS_IN_MONTH = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
module.exports = totalDaysInMonth