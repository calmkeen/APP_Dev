//
//  UserDefault.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 12/17/23.
//

import UIKit

class UserDefault {
    
    func saveData(){
        let data = addTodoListModel.map {
            [
                "lastDateCheck": Bool
                "repeatDataCheck": Bool
                "todoListContext": $0.context
                "title": $0.title
                ""
            ]
            addTodoListModel(lastDateCheck: <#T##Bool#>, repeatDataCheck: <#T##Bool#>, todoListContext: <#T##String#>)
        }
    }
}
