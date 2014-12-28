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
    
    @IBOutlet weak var popoutView: NSPopover!
//    let popover: PopoverView

    override init() {
        let item = NSStatusBar.systemStatusBar().statusItemWithLength(-1)
        
        //self.popover = PopoverView(imageName: "StatusItem-Image", item: item)
        //item.view = popover
        
        item.image = NSImage(named: "StatusItem-Image")
        item.menu = NSMenu(title: "or nah")
        
        
        super.init()
        
        // To add pre Yosemite support see http://stackoverflow.com/questions/5663887/drag-and-drop-with-nsstatusitem/26810727#26810727
        
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        println("did finish launching")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
//    override func awakeFromNib() {
//        let popover = self.popover
//        
//        popover.onMouseDown = {
//            if popover.isSelected {
//                self.popoutView?.showRelativeToRect(self.popover.frame, ofView: popover, preferredEdge: 1)
//            }
//            if !popover.isSelected {
//                self.popoutView?.close()
//            }
//        }
//    }
}

