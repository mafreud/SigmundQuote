//
//  ViewController.swift
//  SigmundQuote
//
//  Created by AOKI, Masahiro on 2018/11/06.
//  Copyright © 2018 WoundedHealer, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fukidashi: UIImageView!
    let freudQuoteArray = ["Fukidashi1", "Fukidashi2", "Fukidashi3", "Fukidashi4", "Fukidashi5"]
    var randomNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fukidashi.image = UIImage(named: "Introduction")
    }

    @IBAction func analysisPressed(_ sender: Any) {
        
        quoteRoll()
        
    }
    func quoteRoll () {
        randomNumber = Int.random(in: 0 ... 4)
        fukidashi.image = UIImage(named: freudQuoteArray[randomNumber])
    }
    
}

