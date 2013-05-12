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
      all: [
        'Gruntfile.js',
        'tasks/*.js',
        '<%= nodeunit.tests %>'
      ],
      options: {
        jshintrc: '.jshintrc'
      }
    },

    // Configuration to be run (and then tested).
    js2coffee: {
      single: {
        files: {
          'test/result/single/ltrim.coffee': [
            'test/fixtures/mout/string/ltrim.js'
          ]
        }
      },
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
    },

    // Unit tests.
    nodeunit: {
      tests: ['test/*_test.js']
    },

    // Before generating any new files, 
    // remove any previously-created files.
    clean: {
      tests: ['test/result/mout/**']
    }
  });

  // Actually load this plugin's task(s).
  grunt.loadTasks('tasks');

  // These plugins provide necessary tasks.
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-nodeunit');

  // plugin's task(s), then test the result.
  grunt.registerTask('test', ['clean', 'js2coffee']);

  // By default, lint and run all tests.
  grunt.registerTask('default', ['jshint', 'test']);

};
