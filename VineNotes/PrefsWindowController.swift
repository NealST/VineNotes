//
//  PrefsWindowController.swift
//  VineNotes
//
//  Created by NealST on 2025/4/20.
//

import Cocoa

class PrefsWindowController: NSWindowController, NSWindowDelegate {
  
    override func windowDidLoad() {
        super.windowDidLoad()
        self.window?.delegate = self
        self.window?.title = NSLocalizedString("Preferences", comment: "")
    }
}
