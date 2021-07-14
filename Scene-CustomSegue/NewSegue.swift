//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by John Hur on 2021/07/14.
//

import UIKit

class NewSegue: UIStoryboardSegue {
    
    override func perform() {
        
        // 세그웨이의 출발지 뷰 컨트롤러
        let srcUVC = self.source
        // 세그웨이의 목적지 뷰 컨트롤러
        let destUVC = self.destination
        // fromView에서 toView로 뷰를 전환
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 0.5, options: .transitionCurlDown)
        
    }
    
}
