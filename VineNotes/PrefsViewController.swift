//
//  PrefsViewController.swift
//  VineNotes
//
//  Created by NealST on 2025/4/21.
//

import Cocoa
import CoreData
import MASShortcut

class PrefsViewController: NSTabViewController {
    override func viewDidLoad() {
        title = "Preferences"
        super.viewDidLoad()
    }

    override func toolbar(_ toolbar: NSToolbar, itemForItemIdentifier itemIdentifier: NSToolbarItem.Identifier, willBeInsertedIntoToolbar flag: Bool) -> NSToolbarItem? {
        let toolbarItem = super.toolbar(toolbar, itemForItemIdentifier: itemIdentifier, willBeInsertedIntoToolbar: flag)

        if
            let toolbarItem = toolbarItem,
            let tabViewItem = tabViewItems.first(where: { ($0.identifier as? String) == itemIdentifier.rawValue }) {
            if let name = tabViewItem.identifier as? String, name == "git" {
                toolbarItem.label = "\(tabViewItem.label)          "
                return toolbarItem
            }

            if let name = tabViewItem.identifier as? String, !["advanced", "security"].contains(name) {
                toolbarItem.label = "\(tabViewItem.label)    "
            }
        }

        return toolbarItem
    }
}

