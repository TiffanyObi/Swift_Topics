//
//  ViewController.swift
//  Swift_Topics
//
//  Created by Tiffany Obi on 11/12/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let swiftTopics = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Functions",
    "Closures", "Enumerations", "Structures and Classes", "Properties", "Methods", "Subscripts",
    "Inheritance", "Initialization", "Deinitialization", "Optional Chaining", "Error Handling",
    "Type Casting", "Nested Types", "Extensions", "Protocols", "Generics", "Opaque Types",
    "Automatic Reference Counting", "Memory Safety", "Access Control", "Advanced Operators"]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
    }


}


extension ViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // 1. get a cell using dequeue resuable.
        let cell = tableView.dequeueReusableCell(withIdentifier: "topic Cell", for: indexPath)
        
        
        //2. get object using index  path. (indexpath.row)
        let swiftTopic = swiftTopics[indexPath.row]
        
        //configure the cell
        cell.textLabel?.text = swiftTopic
        return cell
    }
    
}
    

