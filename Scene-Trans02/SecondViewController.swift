//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by John Hur on 2021/07/13.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func back2(_ sender: Any) {
       _ = self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
}
