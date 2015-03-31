//
//  AppDelegate.swift
//  MagicalRecordDemo
//
//  Created by Connor Taylor on 3/31/15.
//  Copyright (c) 2015 Connor Taylor. All rights reserved.
//

import UIKit

// Plenty of further information can be found on the github repo
// https://github.com/magicalpanda/MagicalRecord

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Initialize the core data stack.  More options for this are documented on the 
        // MagicalRecord Github docs
        MagicalRecord.setupCoreDataStack()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {

    }

    func applicationDidEnterBackground(application: UIApplication) {

    }

    func applicationWillEnterForeground(application: UIApplication) {
        
    }

    func applicationDidBecomeActive(application: UIApplication) {

    }

    func applicationWillTerminate(application: UIApplication) {
        // Don't forget to clean up on termination!
        MagicalRecord.cleanUp()
    }


}

