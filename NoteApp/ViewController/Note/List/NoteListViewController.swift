//
//  NoteListViewController.swift
//  NoteApp
//
//  Created by Jorge Orjuela on 3/09/14.
//  Copyright (c) 2014 NGeen. All rights reserved.
//

import UIKit

class NoteListViewController: UIViewController {

    @IBOutlet var datasource: NoteDatasource!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Notes"
        self.tableView.estimatedRowHeight = 44
        self.tableView.rowHeight = UITableViewAutomaticDimension
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("updateNotes"), name: "didBecomeActive", object: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.updateNotes()
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "didBecomeActive", object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Intance methods
    
    func updateNotes() {
        let userDefaults = NSUserDefaults(suiteName: "group.noteapp")
        if let notes = userDefaults.objectForKey("notes") as? NSData {
            self.datasource.tableData = NSKeyedUnarchiver.unarchiveObjectWithData(notes) as [Note]
            self.tableView.reloadData()
        }
    }
}
