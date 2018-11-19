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
    let 引用集 = ["Fukidashi1", "Fukidashi2", "Fukidashi3", "Fukidashi4", "Fukidashi5"]
    var 乱数生成: Int = 0
    
    var フロイト音声ファイル = ["note1", "note2", "note3", "note4", "note5"]
    var ファイル名を選択 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fukidashi.image = UIImage(named: "Introduction")
        ファイル名を選択 = "Introduction"
        let soundURL = Bundle.main.url(forResource: ファイル名を選択, withExtension: "m4a")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }

    @IBAction func analysisPressed(_ sender: Any) {
        
        しゃべってフロイト()
        
    }
    
    //以下関数コレクション
    
    func しゃべってフロイト () {
        
        乱数生成 = Int.random(in: 0 ... 4)
        print(乱数生成)
        //吹き出しのイメージを変更
        fukidashi.image = UIImage(named: 引用集[乱数生成])
        
        //音声ファイルを変更
        ファイル名を選択 = フロイト音声ファイル[乱数生成]
        let soundURL = Bundle.main.url(forResource: ファイル名を選択, withExtension: "m4a")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}

