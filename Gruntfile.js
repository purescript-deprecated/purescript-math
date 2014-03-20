module.exports = function(grunt) {

    "use strict";

    grunt.initConfig({ 
    
        clean: ["externs", "js"],
    
        "purescript-make": {
            options: {
                tco: true,
                magicDo: true
            },
            lib: {
                src:
                    [ "src/**/*.purs"
                    , "bower_components/purescript-*/src/**/*.purs"
                    ]
            }
        },
        
        purescript: {
            options: {
                tco: true,
                magicDo: true
            },
            "test-simple": {
                options: { 
                    main: true
                },
                dest: "js/_examples/simple.js",
                src:
                    [ "examples/Simple.purs.hs"
                    , "src/**/*.purs"
                    , "bower_components/purescript-*/src/**/*.purs"
                    ]
            }
        }
        
    });

    grunt.loadNpmTasks("grunt-purescript");
    grunt.loadNpmTasks("grunt-contrib-clean");

    grunt.registerTask("default", ["purescript-make:lib"]);
};
