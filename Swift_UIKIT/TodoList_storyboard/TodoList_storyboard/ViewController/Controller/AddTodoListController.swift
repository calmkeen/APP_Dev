//
//  CreateTodoListView.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/10/01.
//

import UIKit

class AddTodoListController: UIViewController {
    
    @IBOutlet var todoListTitle: UITextField!
    @IBOutlet var todoListDate: UIButton!
    @IBOutlet var todoListRepeat: UIButton!
    @IBOutlet var context: UITextView!
    @IBOutlet var backBtn: UIButton!
    @IBOutlet var completeBtn: UIButton!
    
    @IBAction func backBtnEvnet(_ sender: Any) {
        
    }
    @IBAction func completeBtnEvent(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    init(todoListTitle: UITextField? = nil, context: UITextView? = nil) {
//        self.todoListTitle = todoListTitle?.placeholder = "제목을 입력하세요"
//        self.context = context?.text = "작성하실 내용을 입력하세요"
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func backBtnEvent() {
        
    }
    func completeBtnEvent() {
        
    }
}
