//
//  PopoverView.swift
//  Ocean.ink-menubar
//
//  Created by Andrew Breckenridge on 12/3/14.
//  Copyright (c) 2014 asb. All rights reserved.
//

import Cocoa
import Foundation

class PopoverView: NSView {
    
    var image: NSImage
    let item: NSStatusItem
    
    var onMouseDown: () -> ()
    
    var isSelected: Bool {
        didSet {
            if (isSelected != oldValue)
            {
                self.needsDisplay = true
            }
        }
    }
    
    init(imageName: String, item: NSStatusItem) {
        self.image = NSImage(named: imageName)!
        self.item = item
        self.isSelected = false
        self.onMouseDown = {}
        
        let rect = CGRectMake(0, 0, NSStatusBar.systemStatusBar().thickness, NSStatusBar.systemStatusBar().thickness)
        
        super.init(frame: rect)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        // Drawing code here.
        self.item.drawStatusBarBackgroundInRect(dirtyRect, withHighlight: self.isSelected)
        
        let size = self.image.size
        let rect = CGRectMake(2, 2, size.width, size.height)
        
        self.image.drawInRect(rect)
    }
    
    override func mouseDown(theEvent: NSEvent) {
        self.isSelected = !self.isSelected
        self.onMouseDown()
    }
    
    override func mouseUp(theEvent: NSEvent) {
    }
    
}
