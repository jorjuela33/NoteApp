//
//  NoteDatasource.swift
//  NoteApp
//
//  Created by Jorge Orjuela on 3/09/14.
//  Copyright (c) 2014 NGeen. All rights reserved.
//

import UIKit

class NoteDatasource: NSObject, UITableViewDataSource, UITableViewDelegate {
   
    var tableData: [Note] = [Note]()
    
    // MARK: UITableView delegate
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cellIdentifier = "NoteListCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as NoteListCell
        cell.configure(note: self.tableData[indexPath.row])
        return cell
    }
}
