//
//  NewTaskViewController.swift
//  Task
//
//  Created by Rajan  on 5/25/15.
//  Copyright (c) 2015 Rajan . All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    var mainViewController : ViewController!
    
    
    
    @IBOutlet var newTaskTitle: UITextField!
    
    
    @IBAction func cancel () {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        
        
        
        
        //get the value from the text field
        
        let title = self.newTaskTitle.text
        
        //add that to the table view
        
        self.mainViewController.inserNewTask(title)
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        
        //but the table view is in view controller 
        
        
    }
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
