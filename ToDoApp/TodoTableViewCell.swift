//
//  TodoTableViewCell.swift
//  ToDoApp
//
//  Created by Supanut Laddayam on 1/3/2563 BE.
//  Copyright © 2563 Supanut Laddayam. All rights reserved.
//

import UIKit

protocol TodoCellDelegate {
    func didRequestDelete (_ cell:TodoTableViewCell)
    func didRequestComplete (_ cell:TodoTableViewCell)
}

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    
    var delegate: TodoCellDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func completeTodo(_ sender: Any) {
        if let delegateObjects = self.delegate {
            delegateObjects.didRequestComplete(self)
            
        }
    }
    
    @IBAction func deleteTodo(_ sender: Any) {
        if let delegateObjects = self.delegate {
            delegateObjects.didRequestDelete(self)
            
        }
    }
}
