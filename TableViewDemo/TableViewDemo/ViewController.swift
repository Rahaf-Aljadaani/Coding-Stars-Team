//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Ashish Pisey on 04/10/21.
//

import UIKit

let cellIdentifier = "StudentCell"

class ViewController: UIViewController {

    @IBOutlet weak var studentTableView: UITableView!
    let students = ["Rahaf", "Khawalah", "Shua", "Alia", "Rakan", "Ashish"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        studentTableView.dataSource = self
        //studentTableView.delegate = self
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = students[indexPath.row]
        return cell
    }
    
    
}




