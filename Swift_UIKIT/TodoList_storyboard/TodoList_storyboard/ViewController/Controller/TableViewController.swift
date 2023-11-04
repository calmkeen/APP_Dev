//
//  TableView.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/10/01.
//

import UIKit

class ListTodoTablbeViewController : UIViewController {
    
    let testTitle: [String] = ["testTitle","testTitle1","testTitle2","testTitle3"]
    let testSubTitle: [String] = ["testSubTitle","testSubTitle1","testSubTitle2","testSubTitle3"]
    
    @IBOutlet weak var todolistTableView : UITableView!
    var todoCell: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todolistTableView.dataSource = self
        todolistTableView.delegate = self
        registerXib()
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: "TodoTableViewCell", bundle: nil)
        todolistTableView.register(nibName, forCellReuseIdentifier: "TodoTableCell")
    }

}

extension ListTodoTablbeViewController: UITableViewDelegate,UITableViewDataSource {
    
    // TableView item 개수
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return testTitle.count
        }
        
        // TableView Cell의 Object
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableCell", for: indexPath) as! TodoTableViewCell
            
            cell.titleLabel.text = testTitle[indexPath.row]
            cell.subtitlelabel.text = testSubTitle[indexPath.row]
//            cell.checkTodo. = arrFruitInfo[indexPath.row]
            
            return cell
            
        }

}
