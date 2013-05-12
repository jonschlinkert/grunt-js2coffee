define ["../lang/toString"], (toString) ->
  
  ###
  Escape string into unicode sequences
  ###
  escapeUnicode = (str, shouldEscapePrintable) ->
    str = toString(str)
    str.replace /[\s\S]/g, (ch) ->
      
      # skip printable ASCII chars if we should not escape them
      return ch  if not shouldEscapePrintable and (/[\x20-\x7E]/).test(ch)
      
      # we use "000" and slice(-4) for brevity, need to pad zeros,
      # unicode escape always have 4 chars after "\u"
      "\\u" + ("000" + ch.charCodeAt(0).toString(16)).slice(-4)

  escapeUnicode
