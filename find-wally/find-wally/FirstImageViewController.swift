//
//  FirstImageViewController.swift
//  find-wally
//
//  Created by Takanori.H on 2017/03/18.
//  Copyright © 2017年 Takanori.H. All rights reserved.
//

import UIKit
import AVFoundation

class FirstImageViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "doop", withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
                
            } catch {
                // プレイヤー作成失敗
                // その場合は、プレイヤーをnilとする
                audioPlayer = nil
            }
            
        } else {
            // urlがnilなので再生できない
            fatalError("Url is nil.")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }
    
}
