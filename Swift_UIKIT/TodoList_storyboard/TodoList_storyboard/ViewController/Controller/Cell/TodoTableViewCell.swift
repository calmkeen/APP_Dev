//
//  TodoTableViewCell.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/10/15.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var checkTodo: UIButton?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitlelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
