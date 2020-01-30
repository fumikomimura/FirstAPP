//
//  ViewController.swift
//  techacademy 5-0
//
//  Created by 三村文子 on 2020/01/20.
//  Copyright © 2020 三村文子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    //タイマー
    var timer: Timer!
    
    //タイマー用の時間のための変数
    var timer_sec: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

}

//selector: #selector(updatetimer(_:))で指定された関数
//timerInterval: 0.1,repeats: true　で指定された通り、0.1秒毎に呼び出され続ける
    @objc func updateTimer(_ timer: Timer) {
        self.timer_sec += 0.1
        self.timerLabel.text = String(format: "%.1f", self.timer_sec)
    }
    
    @IBAction func startTimer(_ sender: Any) {
        //再生ボタンを押すとタイマー作成、始動
        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        //タイマーを停止
        if self.timer != nil {
        self.timer.invalidate()  //タイマーを停止する
            self.timer = nil     //startTimer()のself.timer == nil で判断するために、self.timer = nilとしておく
        }
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        //リセットボタンを押すと、タイマーの時間を0に
        self.timer_sec = 0
        self.timerLabel.text = String(format: "%.1f", self.timer_sec)
        
        if self.timer != nil {
            self.timer.invalidate()   //タイマーを停止する
            self.timer = nil          //startTimer()のself.timer == nilで判断するために、　self.timer = nilとしておく
        }
    }
    
}
