//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by John Hur on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        NSLog("segueway identifier: \(segue.identifier!)")
        if (segue.identifier == "custom_segue") {
            NSLog("커스텀 세그가 실행됩니다.")
            // 커스텀 세그가 실행될 때 처리할 내용을 여기에 작성
            
        } else if (segue.identifier == "action_segue") {
        NSLog("액션 세그가 실행됩니다.")
            // 액션 세그가 실행될 때 처리할 내용을 여기에 작성
        
        } else {
            NSLog("알 수 없는 세그입니다.")
            // 기타 세그웨이가 실행될 때 처리할 내용을 여기에 작성
        }

    }
}

