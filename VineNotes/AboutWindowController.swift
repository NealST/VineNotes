//
//  AboutWindowController.swift
//  VineNotes
//
//  Created by mozheng on 2025/4/20.
//

import Cocoa

class AboutWindowController: NSWindowController, NSWindowDelegate {
    override func windowDidLoad() {
        super.windowDidLoad()
        self.window?.delegate = self
        self.window?.title = "About"
    }
}
