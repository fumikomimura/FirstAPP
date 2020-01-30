//
//  ViewController.swift
//  secondkadaiAPP
//
//  Created by 三村文子 on 2020/01/21.
//  Copyright © 2020 三村文子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //このメソッドで渡す
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      if segue.identifier == "SecondViewController" {
          
        let secondViewController:SecondViewController = segue.destinationViewController as SecondViewController
        }
    }
  
    -(IBAction)goback:(UIStorybordSegue)sender {
    
    }
    
    
}

