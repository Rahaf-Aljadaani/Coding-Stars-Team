//
//  ViewController.swift
//  Programmatic Navigation
//
//  Created by Ashish Pisey on 06/10/21.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var firstScreenTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextAction(_ sender: UIButton) {
        let secondVC = storyboard?.instantiateViewController(identifier: "Second") as! SecondVC
        secondVC.secondScreenData = firstScreenTextField.text
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

extension FirstVC: SecondDelegate {
    func passData(data: String) {
        self.dataLabel.text = data
        print(data)
    }
}

