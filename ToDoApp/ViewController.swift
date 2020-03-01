//
//  ViewController.swift
//  ToDoApp
//
//  Created by Supanut Laddayam on 1/3/2563 BE.
//  Copyright © 2563 Supanut Laddayam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todoItem = TodoItem(title: "red news", completed: false, createdAt: Date(), itemIdentifier: UUID())
        
//        todoItem.saveItem()
        let todos = DataManager.loadAll(TodoItem.self)
        
        print(todos)
    }


}

