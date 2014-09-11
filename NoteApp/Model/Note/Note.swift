//
//  Note.swift
//  NoteApp
//
//  Created by Jorge Orjuela on 3/09/14.
//  Copyright (c) 2014 NGeen. All rights reserved.
//

import UIKit

@objc(Note) class Note: NSObject, NSSecureCoding {
   
    var content: String

    init(_ content: String) {
        self.content = content
        super.init()
    }
    
    // MARK: Coding protocol
    
    class func supportsSecureCoding() -> Bool {
        return true
    }
    
    func encodeWithCoder(aCoder: NSCoder!) {
        aCoder.encodeObject(self.content, forKey: "content")
    }
    
    required init(coder aDecoder: NSCoder!) {
        self.content = aDecoder.decodeObjectForKey("content") as String
        super.init()
    }
}
