//
//  ViewController.swift
//  CollectionView
//
//  Created by 이지훈 on 2022/08/06.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate,   UICollectionViewDelegateFlowLayout {
   

    @IBOutlet weak var collectView: UICollectionView!
    
   
    let names:[String] = [
        "아이린","태연","아이유","윤아","수지"]
        let arts:[String] = [
            "빨간맛, 파워업","호텔델루나,사계 ","좋은날, 스물셋","효리민박, 바람이분다","건축학개론,페이스타임"
        ]
        let images:[String] = [
            "image1.png","image2.png","image3.png","image4.png","image5.png"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

         
        //일반이벤트 처리자를 자신으로
        collectView.delegate = self
        //데이터소스 이벤트 처리자를 자신으로
        collectView.dataSource = self

    }
    
    //MARK: - 데이타소스 이벤ㅌ
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.collectView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.idolImageView.image = UIImage(named: images[indexPath.row])
        cell.labelNAme.text = names[indexPath.row]
        cell.labelArt.text = names[indexPath.row]
        
        return cell;
    }
    
    //MARK: - 일반이벤트
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("아이템선택됨 : ",indexPath.row)
        
    }
    
    //MARK: - 플로우 레이아웃
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: CGFloat((180)), height: CGFloat(180))
    
        
    }
    
}

