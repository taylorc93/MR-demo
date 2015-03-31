//
//  ViewController.swift
//  MagicalRecordDemo
//
//  Created by Connor Taylor on 3/31/15.
//  Copyright (c) 2015 Connor Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var foos: [Foo]!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Simple query for all Foo objects
        foos = Foo.MR_findAll() as [Foo]
        count = foos.count
        
        for foo in foos {
            println(foo.text)
        }
        
        
        println(foos[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func addFoo(sender: AnyObject) {
        // Creates a new managed foo object
        var foo = Foo.MR_createEntity() as Foo
        
        // Save and wait on object creation to ensure that the object is created
        // before continuing
        NSManagedObjectContext.MR_defaultContext().MR_saveOnlySelfAndWait()
        
        
        // Now that we know foo is created, we can save the rest of our information
        // with a block.  MagicalRecord will handle running this on a background
        // thread for you.
        MagicalRecord.saveWithBlock({ (localContext: NSManagedObjectContext!) in
            var localFoo = foo.MR_inContext(localContext) as Foo
            
            // Note the use of self.count, not just count. We're in a block, not a
            // class or instance method, so we need to be more explicit
            localFoo.text = "Foo: " + String(self.count)
            self.count += 1
        })
        
    }

}

