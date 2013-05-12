
###
Concat multiple arrays and remove duplicates
###
union = (arrs) ->
  results = []
  i = -1
  len = arguments.length
  append results, arguments[i]  while ++i < len
  unique results
unique = require("./unique")
append = require("./append")
module.exports = union