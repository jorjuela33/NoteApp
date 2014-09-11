//
//  Action.js
//  NoteAppExtension
//
//  Created by Jorge Orjuela on 3/09/14.
//  Copyright (c) 2014 NGeen. All rights reserved.
//

var Action = function() {};

Action.prototype = {
    
    run: function(arguments) {
        // Here, you can run code that modifies the document and/or prepares
        // things to pass to your action's native code.
        
        // We will not modify anything, but will pass the body's background
        // style to the native code.
        var selected = "No Text Selected";
        if (window.getSelection) {
            selected = window.getSelection().getRangeAt(0).toString();
        } else {
            selected = document.getSelection().getRangeAt(0).toString();
        }
        arguments.completionFunction({"args" : selected});
    },
    
    finalize: function(arguments) {
        // This method is run after the native code completes.
        
        // We'll see if the native code has passed us a new background style,
        // and set it on the body.
        alert(arguments["message"])
    }
    
};
    
var ExtensionPreprocessingJS = new Action
