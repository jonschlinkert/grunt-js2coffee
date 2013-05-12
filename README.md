# grunt-js2coffee

> Convert JavaScript to CoffeeScript, with Grunt.js

## Getting Started
_If you haven't used [grunt][] before, be sure to check out the [Getting Started][] guide._

From the same directory as your project's [Gruntfile][Getting Started] and [package.json][], install this plugin with the following command:

```bash
npm install js2coffee --save-dev
```

Once that's done, add this line to your project's Gruntfile:

```js
grunt.loadNpmTasks('js2coffee');
```

If the plugin has been installed correctly, running `grunt --help` at the command line should list the newly-installed plugin's task or tasks. In addition, the plugin should be listed in package.json as a `devDependency`, which ensures that it will be installed whenever the `npm install` command is run.

[grunt]: http://gruntjs.com/
[Getting Started]: https://github.com/gruntjs/grunt/blob/devel/docs/getting_started.md
[package.json]: https://npmjs.org/doc/json.html

## The "js2coffee" task

### Overview
In your project's Gruntfile, add a section named `js2coffee` to the data object passed into `grunt.initConfig()`.

```js
grunt.initConfig({

  js2coffee: {
    your_target: {
      // Target-specific file lists and/or options go here.
    }
    // Example: this target compiles a single file
    // from JavaScript to CofeeScript
    single: {
      files: {
        'test/result/single/ltrim.coffee': [
          'test/fixtures/mout/string/ltrim.js'
        ]
      }
    },
    // Example: this target compiles a directory of
    // JavaScript files to individual CofeeScript
    // files, retaining the same directory structure
    // in the destination folder
    each: {
      options: {},
      files: [
        { 
          expand: true, 
          cwd: 'test/fixtures/mout', 
          src: ['**/*.js'], 
          dest: 'test/result/each/mout',
          ext: '.coffee'
        }
      ]
    }
  }

});
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [grunt][].

## Credit

Thank you to **[@rstacruz](https://github.com/rstacruz)** and the contributors of [js2coffee](https://github.com/rstacruz/js2coffee) for all of the hard work that made this plugin possible.

## Plugin Author

**Jon Schlinkert**

+ [http://twitter.com/jonschlinkert](http://twitter.com/jonschlinkert)
+ [http://github.com/jonschlinkert](http://github.com/jonschlinkert)


## Release History
* 2013-05-12      v0.1.0      First commit.
