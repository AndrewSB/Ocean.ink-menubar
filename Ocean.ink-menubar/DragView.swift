//
//  DragView.swift
//  Ocean.ink-menubar
//
//  Created by Andrew Breckenridge on 12/4/14.
//  Copyright (c) 2014 asb. All rights reserved.
//

import Cocoa
import AppKit

class DragView: NSView {

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.registerForDraggedTypes([NSFilenamesPboardType])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        // Drawing code here.
        NSColor.yellowColor().set()
        NSRectFill(self.bounds)
    }
}
