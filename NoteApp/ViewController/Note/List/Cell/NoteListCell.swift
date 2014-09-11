//
//  NoteListCell.swift
//  NoteApp
//
//  Created by Jorge Orjuela on 3/09/14.
//  Copyright (c) 2014 NGeen. All rights reserved.
//

import UIKit

class NoteListCell: UITableViewCell {

    @IBOutlet weak var content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: Instance methods
    
    func configure(#note: Note) {
        self.content.text = note.content
    }
}
