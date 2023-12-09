//
//  AddTodoListViewModel.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/12/09.
//


protocol addTodoListDelegate: AnyObject {
    func AddSaveUserData()
    func addFailUserData()
}
import Foundation

class addTdoListViewModel {
    
    weak var delegate: addTodoListDelegate?
    
    func saveAddTodoListData() {
        
    }
}
