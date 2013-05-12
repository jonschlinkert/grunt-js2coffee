define ["./createObject"], (createObject) ->
  
  ###
  Inherit prototype from another Object.
  - inspired by Nicholas Zackas <http://nczonline.net> Solution
  @param {object} child Child object
  @param {object} parent    Parent Object
  ###
  inheritPrototype = (child, parent) ->
    p = createObject(parent::)
    p.constructor = child
    child:: = p
  inheritPrototype
