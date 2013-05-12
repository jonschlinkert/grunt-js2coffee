define ["../lang/toString"], (toString) ->
  
  ###
  Remove HTML tags from string.
  ###
  stripHtmlTags = (str) ->
    str = toString(str)
    str.replace /<[^>]*>/g, ""
  stripHtmlTags
