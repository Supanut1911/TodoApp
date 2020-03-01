//
//  ToDoitem.swift
//  ToDoApp
//
//  Created by Supanut Laddayam on 1/3/2563 BE.
//  Copyright © 2563 Supanut Laddayam. All rights reserved.
//

import Foundation

struct TodoItem: Codable {
    var title: String
    var completed: Bool
    var createdAt: Date
    var itemIdentifier: UUID
    
    func saveItem() {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem() {
        DataManager.delete(itemIdentifier.uuidString)
    }
    
    mutating func markAsCompleted() {
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    
}
