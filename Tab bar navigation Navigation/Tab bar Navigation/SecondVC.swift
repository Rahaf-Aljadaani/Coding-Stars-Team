//
//  SecondVC.swift
//  Programmatic Navigation
//
//  Created by Ashish Pisey on 06/10/21.
//

import UIKit

protocol SecondDelegate {
    func passData(data:String)
}

class SecondVC: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    var secondScreenData: String?
    var delegate: SecondDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("show second screen")
        // Do any additional setup after loading the view.
        
        self.dataLabel.text = "Hi from coding stars team. \nHi from coding stars team.  "
    }
    
    @IBAction func backClicked(_ sender: UIButton) {
        print("Back clicked")
        delegate?.passData(data: "Hi from 2nd View Controller")
        self.navigationController?.popViewController(animated: true)
    }

}
