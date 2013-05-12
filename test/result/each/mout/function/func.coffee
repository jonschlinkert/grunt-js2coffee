
###
Returns a function that call a method on the passed object
###
func = (name) ->
  (obj) ->
    obj[name]()
module.exports = func