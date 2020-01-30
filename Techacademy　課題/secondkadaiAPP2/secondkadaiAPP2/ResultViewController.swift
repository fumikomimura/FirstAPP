//
//  ResultViewController.swift
//  secondkadaiAPP2
//
//  Created by 三村文子 on 2020/01/24.
//  Copyright © 2020 三村文子. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    //受け取る
    var sendtext:String = ""
    
    @IBOutlet weak var name: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(sendtext)
        
        
        let result = sendtext
        name.text = "こんにちは \(result) さん"
        

        // Do any additional setup after loading the view.
    }
 
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
