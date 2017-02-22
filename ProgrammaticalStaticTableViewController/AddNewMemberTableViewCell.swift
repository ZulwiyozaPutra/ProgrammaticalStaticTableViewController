//
//  AddNewMemberTableViewCell.swift
//  Circle
//
//  Created by Zulwiyoza Putra on 2/22/17.
//  Copyright © 2017 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class AddNewMemberTableViewCell: UITableViewCell {
    
    var newGroupTableViewController = NewGroupTableViewController()
    
    @IBOutlet weak var addNewMemberButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
