//
//  ListViewController.swift
//  MyMovieChart_Re
//
//  Created by John Hur on 2021/08/10.
//

import UIKit

class ListViewController: UITableViewController {
    //MARK: - Tuple Data type
    // 튜플 아이템으로 구성된 데이터 세트
    var dataset = [
        ("다크 나이트", "영웅물에 철학에 음악까지 더해져 예술이 되다.", "2008-09-04", 8.95, "darknight.jpg"),
        ("호우시절", "때를 알고 내리는 좋은 비", "2009-10-08", 7.31, "rain.jpg"),
        ("말할 수 없는 비밀", "여기서 너까지 다섯 걸음", "2015-05-07", 9.19, "secret.jpg"),
    ]
    
    // 테이블 뷰를 구성할 리스트 데이터
    lazy var list: [MovieVO] = {
        var datalist = [MovieVO]()
        for (title, desc, opendate, rating, thumbnail) in self.dataset {
            let mvo = MovieVO()
            mvo.title = title
            mvo.description = desc
            mvo.opendate = opendate
            mvo.rating = rating
            mvo.thumbnail = thumbnail
            
            datalist.append(mvo)
            
        }
        return datalist
    }()
    
    override func viewDidLoad() {
        }
    
    //MARK: - numberOfRowsInSection
    // 생성할 목록의 길이를 반환
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    //MARK: - cellForRowAt
    // 셀 객체를 생성하여 콘텐츠를 구성한 다음 반환
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 주어진 행에 맞는 데이터 소스를 읽어온다.
        let row = self.list[indexPath.row]
        
        // 테이블 셀 객체를 직접 생성하는 대신 큐로부터 가져옴
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell")! as! MovieCell // as! MovieCell 추가됨
        
        // ============== 여기부터 변경 내용 ==============
        // 데이터 소스에 저장된 값을 각 아울렛 변수에 할당
        cell.title?.text = row.title
        cell.desc?.text = row.description
        cell.opendate?.text = row.opendate
        cell.rating?.text = "\(row.rating!)"
        // ============== 여기까지 내용 변경됨 ==============
        
        // ============== 추가된 부분: 이미지 뷰 처리
        cell.thumbnail.image = UIImage(named: row.thumbnail!)
        
        
        // 구성될 셀을 반환함
        return cell
    }
    
    //MARK: - didSelectRowAt
    // 사용자가 셀을 선택했을 때 실행할 액션을 정의
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다")
    }
    
}
