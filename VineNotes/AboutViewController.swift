//
//  AboutViewController.swift
//  VineNotes
//
//  Created by NealST on 2025/4/21.
//

import Cocoa

class AboutViewController: NSViewController {
    override func viewDidLoad() {
        if let dictionary = Bundle.main.infoDictionary,
           let ver = dictionary["CFBundleShortVersionString"] as? String {
            versionLabel.stringValue = "Version \(ver)"
            versionLabel.isSelectable = true
        }
    }

    @IBOutlet var versionLabel: NSTextField!
}

