define ["./randHex", "./choice"], (randHex, choice) ->
  
  ###
  Returns pseudo-random guid (UUID v4)
  IMPORTANT: it's not totally "safe" since randHex/choice uses Math.random
  by default and sequences can be predicted in some cases. See the
  "random/random" documentation for more info about it and how to replace
  the default PRNG.
  ###
  guid = ->
    
    # v4 UUID always contain "4" at this position to specify it was
    # randomly generated
    
    # v4 UUID always contain chars [a,b,8,9] at this position
    randHex(8) + "-" + randHex(4) + "-" + "4" + randHex(3) + "-" + choice(8, 9, "a", "b") + randHex(3) + "-" + randHex(12)
  guid
