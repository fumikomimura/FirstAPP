//
//  ViewController.swift
//  secondkadaiAPP2
//
//  Created by 三村文子 on 2020/01/24.
//  Copyright © 2020 三村文子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nametext: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any? ) {
       
       
//segueから遷移先のResultViewControllerを取得する
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        
            
            resultViewController.sendtext = self.nametext.text!
            
    }

    }
    

