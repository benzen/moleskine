module.exports = (grunt)->
    grunt.initConfig
      coffee:
        glob_to_multiple:
          expand: true
          flatten: true
          cwd: 'src/backend'
          src: ['*.coffee']
          dest: 'webapp/'
          ext: '.js'
    grunt.loadNpmTasks 'grunt-bower-task'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
