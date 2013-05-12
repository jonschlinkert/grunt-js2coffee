define ["../array/some"], (some) ->
  # YYYY
  # YYYY-MM (YYYYMM not allowed)
  # YYYY-MM-DD or YYYYMMDD
  # YYYY-DDD
  # HH.hh
  # HH:MM.mm
  # HH:MM:SS.ss
  matchAll = (str, patterns) ->
    match = undefined
    found = some(patterns, (pattern) ->
      !!(match = pattern.exec(str))
    )
    (if found then match else null)
  getDate = (year, month, day) ->
    date = new Date(Date.UTC(year, month, day))
    
    # Explicitly set year to avoid Date.UTC making dates < 100 relative to
    # 1900
    date.setUTCFullYear year
    valid = date.getUTCFullYear() is year and date.getUTCMonth() is month and date.getUTCDate() is day
    (if valid then +date else NaN)
  parseOrdinalDate = (str) ->
    match = ORD_DATE.exec(str)
    if match
      year = +match[1]
      day = +match[2]
      date = new Date(Date.UTC(year, 0, day))
      return +date  if date.getUTCFullYear() is year
    NaN
  parseDate = (str) ->
    match = undefined
    year = undefined
    month = undefined
    day = undefined
    match = matchAll(str, datePatterns)
    
    # Ordinal dates are verified differently.
    return parseOrdinalDate(str)  if match is null
    year = (if (match[1] is undefined) then 0 else +match[1])
    month = (if (match[2] is undefined) then 0 else +match[2] - 1)
    day = (if (match[3] is undefined) then 1 else +match[3])
    getDate year, month, day
  getTime = (hr, min, sec) ->
    valid = (hr < 24 and hr >= 0 and min < 60 and min >= 0 and sec < 60 and min >= 0) or (hr is 24 and min is 0 and sec is 0)
    return NaN  unless valid
    ((hr * 60 + min) * 60 + sec) * 1000
  parseOffset = (str) ->
    match = undefined
    if str.charAt(str.length - 1) is "Z"
      str = str.substring(0, str.length - 1)
    else if match = TIME_ZONE.exec(str)
      match = TIME_ZONE.exec(str)
      if match
        hours = +match[3]
        minutes = (if (match[4] is undefined) then 0 else +match[4])
        offset = getTime(hours, minutes, 0)
        offset *= -1  if match[2] is "-"
        return (
          offset: offset
          time: match[1]
        )
    
    # No time zone specified, assume UTC
    offset: 0
    time: str
  parseTime = (str) ->
    match = undefined
    offset = parseOffset(str)
    str = offset.time
    offset = offset.offset
    return NaN  if isNaN(offset)
    match = matchAll(str, timePatterns)
    return NaN  if match is null
    hours = (if (match[1] is undefined) then 0 else +match[1])
    minutes = (if (match[2] is undefined) then 0 else +match[2])
    seconds = (if (match[3] is undefined) then 0 else +match[3])
    getTime(hours, minutes, seconds) - offset
  
  ###
  Parse an ISO8601 formatted date string, and return a Date object.
  ###
  parseISO8601 = (str) ->
    match = DATE_TIME.exec(str)
    
    # No time specified
    return parseDate(str)  unless match
    parseDate(match[1]) + parseTime(match[2])
  datePatterns = [/^([0-9]{4})$/, /^([0-9]{4})-([0-9]{2})$/, /^([0-9]{4})-?([0-9]{2})-?([0-9]{2})$/]
  ORD_DATE = /^([0-9]{4})-?([0-9]{3})$/
  timePatterns = [/^([0-9]{2}(?:\.[0-9]*)?)$/, /^([0-9]{2}):?([0-9]{2}(?:\.[0-9]*)?)$/, /^([0-9]{2}):?([0-9]{2}):?([0-9]{2}(\.[0-9]*)?)$/]
  DATE_TIME = /^(.+)T(.+)$/
  TIME_ZONE = /^(.+)([+\-])([0-9]{2}):?([0-9]{2})$/
  parseISO8601
