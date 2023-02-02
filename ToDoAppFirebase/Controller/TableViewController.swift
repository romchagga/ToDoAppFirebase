//
//  TableViewController.swift
//  ToDoAppFirebase
//
//  Created by macbook on 02.02.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var reuseIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        configViews()
    }
    
    func configViews() {
        
        tableView.register(ToDoCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        tableView.rowHeight = 60
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ToDoCell else {return UITableViewCell()}
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
