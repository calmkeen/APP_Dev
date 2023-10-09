//
//  TableView.swift
//  TodoList_storyboard
//
//  Created by calmkeen on 2023/10/01.
//

import UIKit

class ListTodoTablbeViewController : UITableViewController{
     
    var todolistView : UITableView
    var todoCell: UITableViewCell
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
}

extension ListTodoTablbeViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
         
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellName", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }
}
