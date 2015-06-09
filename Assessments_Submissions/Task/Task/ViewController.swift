//
//  ViewController.swift
//  Task
//
//  Created by Rajan  on 5/24/15.
//  Copyright (c) 2015 Rajan . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableview : UITableView!
    
    
    var tasks = ["Order an Apple Watch", "Purchase Applecare",  "Sell my ipad"]
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func inserNewTask(task:String) {
        //remmember the date
        self.tasks.append(task)
        
        
        //update the table view!
        
        let IndexPath = NSIndexPath[forRow: self.tasks.count - 1, inSection: 0]
        
        
        self.tableview.insertRowsAtIndexPaths(indexPaths: [IndexPath], withRowAnimation: .Automatic)
        
        override func prepareForsegue (segue: UIStoryboard, sender: AnyObject?) {
            if segue.identifier == "NewTaskSegue" {
                let destination = segue.destinitionViewController as! NewTaskViewController
                destination.mainViewController = self
            }
        }
        
        
//        let IndexPath = NSIndexPath[forRow: self.tasks.count - 1, inSection: 0]
        
    }
    
    // Mark - table view methods 
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tasks.count
        
        }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //get the cell
        let cell = self.tableview.dequeueReusableCellWithIdentifier("Taskcell", forIndexPath: indexPath) as! UITableViewCell
        
        let task = self.tasks[indexPath.row]
        cell.textLabel!.text = task
        
        return cell
        
        
    }
    
    
    
    
    

}





