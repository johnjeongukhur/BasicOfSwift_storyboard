//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by John Hur on 2021/07/15.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 화면에 값을 표시하는데 사용될 레이블
    @IBOutlet var resultEmail: UILabel! // 이메일
    @IBOutlet var resultUpdate: UILabel! // 자동갱신 여부
    @IBOutlet var resultInterval: UILabel! // 갱신주기
    
    
    // 1 email 값을 받을 변수
    var paramEmail: String = ""
    // 2 Update 값을 받을 변수
    var paramUpdate: Bool = false
    // 3 Interval 값을 받을 변수
    var paramInterval: Double = 0
    
    
    
}
