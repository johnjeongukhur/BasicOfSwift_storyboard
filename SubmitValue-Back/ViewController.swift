//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by John Hur on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 값을 화면에 표시하기 위한 아울렛 변수들
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    // 값을 직접 건네받는 역할 변수
    
    
    
    // 화면이 표시될 때마다 실행되는 메소드
    override func viewWillAppear(_ animated: Bool) {
        
        // AppDelegate 객체의 인스턴스를 가져온다.
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail { // 이메일 표시
            resultEmail.text = email
        }
        if let update = ad?.paramUpdate { // 자동 갱신 여부 표시
            resultUpdate.text = update == true ? "자동갱신":"자동갱신안함"
        }
        if let interval = ad?.paramInterval { // 갱신 주기 표시
            resultInterval.text = "\(Int(interval))분마다"
        }
        
    }
    
}

