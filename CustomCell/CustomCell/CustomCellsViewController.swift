//
//  ViewController.swift
//  CustomCell
//
//  Created by Ashish Pisey on 05/10/21.
//

import UIKit

let customCellIdentifier = "CustomCell"
let taskCellIdentifier = "TaskCell"

class CustomCellsViewController: UITableViewController {
    var nums = [1, 90, 32, 23, 9, 12]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Row: \(indexPath.row)")
        if indexPath.row % 2 == 0 {
            let cell = getCustomCell(tableView, cellForRowAt: indexPath)
            return cell
        } else {
            let cell = getTaskCell(tableView, cellForRowAt: indexPath)
            return cell
        }
    }
    
    func getCustomCell(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> CustomCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCellIdentifier, for: indexPath) as! CustomCell
        
        cell.rightLabel.text = "\(nums[indexPath.row])"
        if nums[indexPath.row] > 24 {
            cell.rightLabel.isHidden = false
            cell.leftButton.backgroundColor = UIColor.green
        } else {
            cell.rightLabel.isHidden = true
            cell.leftButton.backgroundColor = UIColor.red
        }
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    
    func getTaskCell(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> TaskCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: taskCellIdentifier, for: indexPath) as! TaskCell
        cell.profileImageView.image = UIImage.init(systemName: "person.crop.circle")
        cell.profileName.text = "Name: \(indexPath.row)"
        // return cell so that Table View knows what to draw in each row
        return cell
    }
}

