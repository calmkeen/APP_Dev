//
//  AddTodoListModel.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/12/09.
//

import Foundation

struct addTodoListModel {
    var Title = ""
    var lastDateCheck: Bool
    var repeatDataCheck: Bool
    var lastDateSetting = DateFormatter()
    var repeatDataCycle = ["day","week","month","year"]
    var todoListContext: String
    
    init(Title: String = "", lastDateCheck: Bool, repeatDataCheck: Bool, lastDateSetting: DateFormatter = DateFormatter(), repeatDataCycle: [String] = ["day","week","month","year"], todoListContext: String) {
        self.Title = "Null"
        self.lastDateCheck = false
        self.repeatDataCheck = false
        self.lastDateSetting = DateFormatter()
        self.repeatDataCycle = repeatDataCycle
        self.todoListContext = todoListContext
    }
}
