renderer
========
Returns a promise with a rendered handlebars file or renders template to a file

## renderer(src,[dest],data)

```coffeescript
  renderer 'templates/foo.hbs', 'public/foo.html',
    title: 'Foobar'
    name: 'Sublime'
  .then ->
    console.log 'all done!'
```

```coffeescript
  renderer 'templates/foo.hbs',
    title: 'Foobar'
    name: 'Sublime'
  .then (rendered) ->
    console.log rendered
```

Includes a Handlebars helper `readFile` for reading file contents into a template.

```
  {{readFile '/path/relative/to/hbs/file.txt'}}
```

## License
MIT
