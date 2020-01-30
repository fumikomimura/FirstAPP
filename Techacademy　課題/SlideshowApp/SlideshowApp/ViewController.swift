//
//参考サイトhttp://seeku.hateblo.jp/entry/2016/07/02/221842
//https://secondflush2.blog.fc2.com/blog-entry-96.html
//https://teratail.com/questions/165660

//  ViewController.swift
//  SlideshowApp
//
//  Created by 三村文子 on 2020/01/26.
//  Copyright © 2020 三村文子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

     //戻るボタン 押すとrainbowが出てくるようにr
   
    @IBAction func `return`(_ sender: Any) {
        imageView.image = UIImage(named: "rainbow")
    }
    
   
    
    //自動再生ボタン
    @IBAction func play(_ sender: Any) {
        
    }
    
      //進むボタン（nextでエラー出たからmoveにした）
    @IBAction func move(_ sender: Any) {
    }
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    //image画像を入れた
    
    //let images = [UIImage(named: "rainbow"), UIImage(named: "rainbow2"), UIImage(named: "rainbow3"), UIImage(named:"rainbow4"), UIImage(named:"rainbow5"), UIImage(named:"rainbow6"), UIImage(named:"rainbow7")]
    
    
    //image画像の配列
    let imageNameArray = ["rainbow", "rainbow2", "rainbow3", "rainbow4", "rainbow5", "rainbow6","rainbow7"]
    
    //一定間隔で処理を行うためのタイマー
    //!!!!var timer : Timer?
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
      
        
    let image = UIImage(named: "rainbow")
         imageView.image = image
    
        
    //表示している画像の番号
    var dispImageNo = 0
    
        
    //表示している画像の番号をもとに画像を表示する
    func displayImage() {
        
        
        
        //タイマーを設定
        //!!!!timer = Timer.scheduledTimerWithTimeInterval(2.0, target: self, selector: //!!!!#selector(ViewController.onTimer(_:)), userInfo: nil, repeats: ture)
        
        //画面遷移のためのコード
        self.performSegue(withIdentifier: "toSecond", sender: self)
}
    
    //Timerによって、一定間隔で呼び出される関数
   //!!! func onTimer(timer: Timer) {
        
        //関数が呼ばれていることを確認
       //!!!! print("onTimer")
    }

  //!!!  override func didReceiveMemoryWarning() {
   //!!!      super.didReceiveMemoryWarning()
   //Dispose of any resources that can be recreated.
    }


