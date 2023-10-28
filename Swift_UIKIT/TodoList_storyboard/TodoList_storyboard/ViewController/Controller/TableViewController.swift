//
//  TableView.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/10/01.
//

import UIKit

class ListTodoTablbeViewController : UIViewController, UITableViewDataSource{

     
    @IBOutlet var todolistTableView : UITableView!
    var todoCell: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todolistTableView.dataSource = self
    }
    private func registerXib() {
        let nibName = UINib(nibName: "TodoTableViewCell", bundle: nil)
        todolistTableView.register(nibName, forCellReuseIdentifier: "TodoTableCell")

    }


    
}

extension ListTodoTablbeViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CellName", for: indexPath)
//        return cell
//    }
}
