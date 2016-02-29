//
//  ViewController.swift
//  FlappyBirdClone
//
//  Created by Takahiro.Kawakami on 2016/02/29.
//  Copyright © 2016年 Takahiro.Kawakami. All rights reserved.
//

import UIKit
import SpriteKit
import iAd

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型を変換する
        let skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)
        
        // ビューにシーンを表示する
        skView.presentScene(scene)
        
        // iAdを表示する
        canDisplayBannerAds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }


}

