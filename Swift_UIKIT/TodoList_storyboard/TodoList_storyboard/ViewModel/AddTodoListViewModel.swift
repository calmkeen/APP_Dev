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
    
    let testcode = 0
    let testcode1 = 1
    
    weak var delegate: addTodoListDelegate?
    
    func saveAddTodoListData() {
        
        // 여기 잘 이해가 안감 -> 이해가 감
        guard let delegate = self.delegate else {return}
        
        //저장 되는 기능 구현 성공 실패
        if testcode == 0 {
            delegate.AddSaveUserData()
        }else {
            delegate.addFailUserData()
        }
        
    }
}
