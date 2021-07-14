//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by John Hur on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ sender: Any) {
        
        // 세그웨이를 실행
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    
}

