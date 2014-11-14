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
          
      copy: 
        main: 
          files: [
            {expand: true, flatten: true, src: ['src/frontend/*.jade'], dest: 'webapp/views/', filter: 'isFile'}
          ]
      clean: ["webapp"]

    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-bower-task'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-clean'

    grunt.registerTask("default", [ "clean", "copy", "coffee"])
