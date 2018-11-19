//
//  ViewController.swift
//  SigmundQuote
//
//  Created by AOKI, Masahiro on 2018/11/06.
//  Copyright © 2018 WoundedHealer, Inc. All rights reserved.
//

import UIKit
import AVFoundation




class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    //これどういう構文？
    //ここから音声ファイルのプログラム
    var audioPlayer : AVAudioPlayer!
    
    
    @IBOutlet weak var fukidashi: UIImageView!
    let 引用の配列 = ["Fukidashi1", "Fukidashi2", "Fukidashi3", "Fukidashi4", "Fukidashi5"]
    var 乱数生成: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fukidashi.image = UIImage(named: "Introduction")
    }

    @IBAction func analysisPressed(_ sender: Any) {
        
        quoteRoll()
        
    }
    func quoteRoll () {
        乱数生成 = Int.random(in: 0 ... 4)
        fukidashi.image = UIImage(named: 引用の配列[乱数生成])
    }
    
}

