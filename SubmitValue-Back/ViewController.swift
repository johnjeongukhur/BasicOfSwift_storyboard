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

    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    // 값을 직접 건네받는 역할 변수
    var paramEmail: String? // 이메일 값을 전달 받을 속성
    var paramUpdate: Bool? // 자동 갱신 여부를 전달 받을 속성
    var paramInterval: Double? // 갱신주기 값을 전달 받을 속성
    
    // 화면이 표시될 때마다 실행되는 메소드
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail {
            resultEmail.text = email
        }
        if let update = paramUpdate {
            resultUpdate.text = update==true ? "자동갱신":"자동갱신 안함"
        }
        if let interval = paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
    }
    
}

