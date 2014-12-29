//
//  ContentViewController.swift
//  Ocean.ink Menubar
//
//  Created by Andrew Breckenridge on 12/28/14.
//  Copyright (c) 2014 asb. All rights reserved.
//

import Cocoa

class ContentViewController: NSViewController {
    @IBOutlet weak var signInButton: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.signInButton.cell()?.backgroundColor = NSColor.redColor()
        
    }
    
    @IBAction func signInButtonHit(sender: AnyObject) {
    }
    
}
