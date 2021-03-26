//
//  ViewController.swift
//  Chapter15-1
//
//  Created by daito yamashita on 2021/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var azarashi: UIImageView!
    
    // ビューがタップされたら実行
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        
        // タップされた座標を調べる
        let tapPoint = sender.location(in: view)
        
        // 指定した最終値になるようにアニメーションする
        UIView.animate(
            
            // 1秒間で再生
            withDuration: 1.0,
            
            // 待ち時間なし
            delay: 0,
            
            // イーズインアウト
            options: [.curveEaseInOut],
            
            // タップした座標に移動
            animations: {
                self.azarashi.center = tapPoint
            },
            
            completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let azarashi2 = UIImageView(image: UIImage(named: "azarashi"))
        azarashi2.center = CGPoint(x: 50, y: 500)
        view.addSubview(azarashi2)
        
        UIView.animate(
            withDuration: 1.0,
            delay: 0,
            options: [
                .curveEaseInOut,
                .autoreverse,
                .repeat
            ],
            animations: {
                azarashi2.center.x = self.view.frame.width - 50
            },
            completion: nil)
    }
}

