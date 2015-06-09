//
//  ViewController.swift
//  class 6
//
//  Created by Rajan  on 5/12/15.
//  Copyright (c) 2015 Rajan . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    
    @IBOutlet weak var mytextfield: UITextField!

    @IBAction func mybutton(sender: UIButton) {
        self.mylabel.text = self.mytextfield.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

