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
            {expand: true, flatten: true, src: ['src/frontend/*.jade'], dest: 'webapp/views/', filter: 'isFile'},
            {expand: true, cwd:"bower_components/ratchet/dist/", src: ['**'], dest: 'webapp/public/', filter: 'isFile'}
            {expand: true, cwd:"bower_components/angular/", src:["angular.js"], dest: 'webapp/public/js/', filter: 'isFile'}
          ]
          
      clean: ["webapp"]

    grunt.loadNpmTasks 'grunt-contrib-copy'
    grunt.loadNpmTasks 'grunt-bower-task'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-clean'

    grunt.registerTask "default", ["clean", "copy", "coffee"]
