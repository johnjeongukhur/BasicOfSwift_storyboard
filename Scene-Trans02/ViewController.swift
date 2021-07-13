//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by John Hur on 2021/07/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 두번째 뷰 컨트롤러 인스턴스를 가져온다.
    @IBAction func moveByNavi(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else { return }
    // 화면을 전환한다.
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func movePresent(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else { return }
        // 화면전환을 한다.
        self.present(uvc, animated: true)
    }
    
    
}
    


