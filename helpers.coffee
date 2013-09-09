fs = require 'fs-extra'
path = require 'path'

module.exports = (Handlebars, src) ->
  Handlebars.registerHelper 'readFile', (filename) ->
    dir = path.dirname src
    filepath = path.join dir, filename

    console.log 'filepath', filepath
    fs.readFileSync filepath, encoding: 'utf-8', (err, data) ->
      throw err if err?
      data
