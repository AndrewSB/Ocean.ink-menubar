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
    
    let popover: PopoverView

    override init() {
        println("initted")
        
        let bar = NSStatusBar.systemStatusBar()
        let item = bar.statusItemWithLength(-1)
        
        self.popover = PopoverView(imageName: "StatusItem-Image", item: item)
        item.view = popover
        
        super.init()
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        println("did finish launching")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    override func awakeFromNib() {
        //onmousedown
    }

    func setupStatusItem() {
        let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(16)
        statusItem.title = "my app"
        statusItem.image = NSImage(named: "StatusItem-Image")
        statusItem.alternateImage = NSImage(named: "StatusItem-AlternateImage")
        statusItem.highlightMode = true
        
        setupPopoverItem()
    }
    
    func setupPopoverItem() {
        
    }

}

