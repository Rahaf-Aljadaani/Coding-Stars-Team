//
//  ViewController.swift
//  Tabbar Navigation
//
//  Created by Ashish Pisey on 06/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextAction(_ sender: UIButton) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

