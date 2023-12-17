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
        let userDefaults = UserDefaults.standard
        userDefaults.set(data, forKey: "todolistKey")
        userDefaults.synchronize()
    }
    
    func loadAllData() {
        let userDeffaults = UserDefault.standard
        guard let data = userDefaults.object(forKey: "todolistKey") as ? [String: AnyObject] else {return}
        print(data.description)
    }
}
