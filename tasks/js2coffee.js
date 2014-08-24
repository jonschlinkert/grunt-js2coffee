/*
 * js2coffee <https://github.com/jonschlinkert/grunt-js2coffee>
 *
 * Copyright (c) 2013 Jon Schlinkert
 * Licensed under the MIT license.
 */

'use strict';

module.exports = function(grunt) {

  var path = require('path');

  grunt.registerMultiTask('js2coffee', 'Convert JavaScript files to CoffeeScript.', function() {

    // Merge task-specific and/or target-specific options with these defaults.
    var options = this.options({
      single_quotes: true,
      indent: '  ',
      no_comments: false,
      show_src_lineno: false
    });

    // Iterate over all specified file groups.
    this.files.forEach(function(fp) {

      var srcFile = fp.src.filter(function(filepath) {
        // Verify that files exist. Warn if a source file/pattern was invalid.
        if (!grunt.file.exists(filepath)) {
          grunt.log.warn('Source file "' + filepath + '" not found.');
          return false;
        } else {
          return true;
        }
      }).map(grunt.file.read).join(grunt.util.normalizelf(grunt.util.linefeed)); // Read source files.

      // Handle options.
      var coffee = convertToCoffee(srcFile, options);
      if (coffee.length < 1) {
        grunt.log.warn('Destination not written because dest file was empty.');
      } else {

        // Write the destination file.
        grunt.file.write(fp.dest, coffee);

        // Print a success message.
        grunt.log.ok('File "' + fp.dest + '"...' + 'OK.'.green);
      }
    });
  });

  var convertToCoffee = function(source, options) {
    var js2coffee;
    try {
      return js2coffee = require("js2coffee").build(source, options);
    } catch (e) {
      grunt.log.error(e);
      grunt.fail.warn('Coffee-scriptification failed.');
    }
  };
};
