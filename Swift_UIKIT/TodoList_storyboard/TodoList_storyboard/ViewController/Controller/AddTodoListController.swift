//
//  CreateTodoListView.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/10/01.
//

import UIKit

class AddTodoListController: UIViewController {
    

    private var  addViewModel: addTdoListViewModel!
    
    @IBOutlet var todoListTitle: UITextField!
    @IBOutlet var lastDateBtn: UIButton!
    @IBOutlet var repeatDateBtn: UIButton!
    @IBOutlet var lastDateSetting: UIView!
    @IBOutlet var repeatDateSetting: UIButton!
    @IBOutlet var context: UITextView!
    @IBOutlet var backBtn: UIButton!
    @IBOutlet var completeBtn: UIButton!
    
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
    
    @IBAction func backBtnEvent(_ sender: Any) {
        let backBtnView = self.storyboard?.instantiateViewController(withIdentifier: "HomeView")
        backBtnView?.modalTransitionStyle = .coverVertical
        backBtnView?.modalPresentationStyle = .automatic
        self.present(backBtnView!, animated: true, completion:  nil)
    }
    func completeBtnEvent() {
        self.addViewModel.saveAddTodoListData()
    }
}

extension AddTodoListController: addTodoListDelegate {
    
    func AddSaveUserData() {
        self.showAlertMessag(title: "저장 완료", message: "계획을 시작해 볼까요?")
    }
    func addFailUserData() {
        self.showAlertMessag(title: "저장 실패", message: "다시한번  작성해보실래요?")
    }
}
