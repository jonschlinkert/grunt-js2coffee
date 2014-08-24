/*
 * js2coffee
 * https://github.com/jonschlinkert/grunt-js2coffee
 *
 * Copyright (c) 2013 Jon Schlinkert
 * Licensed under the MIT license.
 */

'use strict';

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({

    jshint: {
      all: ['Gruntfile.js', 'tasks/*.js'],
      options: {
        jshintrc: '.jshintrc'
      }
    },

    // Configuration to be run (and then tested).
    js2coffee: {
      single: {
        options: {
          single_quotes: false,
          indent: '    ',
          show_src_lineno: true
        },
        src: 'tmp/mout/src/string/contains.js',
        dest: 'tmp/single/contains.coffee'
      },
      multiple: {
        files: [
          {
            expand: true,
            cwd: 'tmp/mout/src',
            src: ['**/*.js'],
            dest: 'tmp/coffee/mout/',
            ext: '.coffee'
          }
        ]
      }
    },

    // Before generating any new files,
    // remove any previously-created files.
    clean: {
      tests: ['tmp/coffee/**', 'tmp/single/**']
    }
  });

  // Actually load this plugin's task(s).
  grunt.loadTasks('tasks');

  // These plugins provide necessary tasks.
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-clean');

  // plugin's task(s), then test the result.
  grunt.registerTask('test', ['clean', 'js2coffee']);

  // By default, lint and run all tests.
  grunt.registerTask('default', ['jshint', 'test']);

};
