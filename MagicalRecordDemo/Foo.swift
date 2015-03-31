//
//  Foo.swift
//  MagicalRecordDemo
//
//  Created by Connor Taylor on 3/31/15.
//  Copyright (c) 2015 Connor Taylor. All rights reserved.
//

import Foundation
import CoreData

// Mapping of the Core Data Entity to a Swift class
// To create this file easily:
// 1. Select your data model file
// 2. Click 'Editor' -> 'Create NSManagedObject Subclass'
// 3. Follow Xcode's instructions

// Add @objc(<className>) to expose that class to objective-c API
@objc(Foo)
class Foo: NSManagedObject {

    @NSManaged var text: String
    
}
