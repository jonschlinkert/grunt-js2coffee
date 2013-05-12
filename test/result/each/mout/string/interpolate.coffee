#mustache-like

###
String interpolation
###
interpolate = (template, replacements, syntax) ->
  template = toString(template)
  replaceFn = (match, prop) ->
    (if (prop of replacements) then toString(replacements[prop]) else "")

  template.replace syntax or stache, replaceFn
toString = require("../lang/toString")
stache = /\{\{(\w+)\}\}/g
module.exports = interpolate