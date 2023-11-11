//
//  TodoModel.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/11/11.
//

import Foundation

struct TodoModel {
    var todotitle: String
    var todoDeadLine = DateFormatter()
    var todoRepeat: String
//    var subtitle = subtitle.self
    enum subtitle {
        case Context
        case penatly
    }

    init(todotitle: String, todoDeadLine: DateFormatter, todoRepeat: String ) {
        self.todotitle = todotitle
        self.todoDeadLine = todoDeadLine
        self.todoRepeat = todoRepeat
    }
}
