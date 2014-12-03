//
//  AppDelegate.swift
//  Ocean.ink-menubar
//
//  Created by Andrew Breckenridge on 12/2/14.
//  Copyright (c) 2014 asb. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        setupStatusItem()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func setupStatusItem() {
        let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(16)
        statusItem.title = "my app"
        statusItem.image = NSImage(named: "StatusItem-Image")
        statusItem.alternateImage = NSImage(named: "StatusItem-AlternateImage")
        statusItem.highlightMode = true
    }
    
    func setupPopoverItem() {
        
    }

}

