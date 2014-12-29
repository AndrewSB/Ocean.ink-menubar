//
//  AppDelegate.swift
//  Ocean.ink Menubar
//
//  Created by Andrew Breckenridge on 12/28/14.
//  Copyright (c) 2014 asb. All rights reserved.
//

import Cocoa
import Social

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    let contentViewController = ContentViewController(nibName: "ContentViewController", bundle: NSBundle.mainBundle())
    var statusItemPopup: AXStatusItemPopup?
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Init status bar item
        statusItemPopup = AXStatusItemPopup(viewController: contentViewController, image: NSImage(named: "StatusItemIcon")) // maybe add alternateImage?
    }

    func applicationWillTerminate(aNotification: NSNotification) {
    }


}

