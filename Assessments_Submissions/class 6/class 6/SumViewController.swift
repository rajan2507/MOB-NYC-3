//
//  ViewController.swift
//  class 6
//
//  Created by Rajan  on 5/12/15.
//  Copyright (c) 2015 Rajan . All rights reserved.
//

import UIKit

class SumViewController: UIViewController {
    
    @IBOutlet weak var mysecondlabel: UILabel!
    
    @IBOutlet weak var mytexta: UITextField!
    
    @IBOutlet weak var mytextb: UITextField!
    
    @IBOutlet weak var mybutton2: UIButton!
    
    
    @IBAction func onbuttontapped(sender: AnyObject) {
        
        let A = self.mytexta.text
        let B = self.mytextb.text
        
        let Adouble = NSString(string:A).doubleValue
        let BDouble = NSString(string:B).doubleValue
        
        let add = Adouble + BDouble
        
        self.mysecondlabel.text = "\(add)"
        
        
        
        
        
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

