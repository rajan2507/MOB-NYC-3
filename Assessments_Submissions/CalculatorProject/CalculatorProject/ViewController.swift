//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Rajan  on 6/9/15.
//  Copyright (c) 2015 Rajan . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var operand1: Float = 0  // the first operand variable always a float thats =  0
    var operation: String? // operation var is a optional string
    var operand2: Float? // the second operad variable is a optional float of numbers
    
    
// Screen Label is refrenced by draggng from main stroy board. 
    
    @IBOutlet weak var ScreenLabel: UILabel!
    
    
    
// Digits 0 - 9 is (touch up inside) as UI button properties
    
    
    @IBAction func PressedInt(sender: UIButton) {
        // variable digit is in Pressed Int Function UI button
        //variable digit is a string that is an optional which values depends on senders buttons pressed
        var digit:String = sender.titleLabel!.text!
        
        //variable current string is the string that is displayed on the screen label (UI LABEL)
        var currentString:String = self.ScreenLabel.text!
        
        
        //var opeartion from view controller is an optional string records the number as operand 1 and records opearnd 2 nill because it checks that whent he current string or starting string is 0 then it starts the updateOperand function that is stated below
        if self.operation != nil && self.operand2 == nil {
            currentString = "0"
        }

        
        
        
        
        //if the current string that is dispayed is 0 then the variables digit are selected and dispayed and appended
        if currentString == "0" {
            self.ScreenLabel.text = digit
        } else {
            self.ScreenLabel.text = currentString + digit
        }
        
        
        
        updateOperand()
        
        
    }
    
  // decimial button is touch up inside as UI button
    @IBAction func Decimal(sender: UIButton) {
    var currentString:String = self.ScreenLabel.text! //Current String Variable: Does it have to be put in every function seperateley or can it exist usable for all functions and just initialized once???????????
        
     
        
  //if the current string range of String function is used and checks if a "." is pressed then it adds decimal to the current string only once
        if currentString.rangeOfString(".") == nil {
            self.ScreenLabel.text = currentString + "."
        }
        
        // this statement states again to take the first operand and record it and use the update operand function stated below
        if self.operation != nil && self.operand2 == nil {
            currentString = "0"
        }
        
        updateOperand() // update operand function is called
        
        
        
    
    
        
    }

    
    
    
    
    
    
    
    
    
    // negation button is touch up inside as UI button
    @IBAction func Negation(sender: UIButton) {
        var currentString:String = self.ScreenLabel.text!
        
        //a constant first character is = shows up at the begining of the string
        let firstChar = currentString[currentString.startIndex] //start index allows the first char constant to be only at the begnining of the string
        //if user preses - then it removes the "-" string from the beginig
        if firstChar == "-" {
            self.ScreenLabel.text = dropFirst(currentString)
            //adds the "-" to the begining of the string
        } else {
            self.ScreenLabel.text = "-" + currentString
        }
        
        updateOperand() // the update operand function is called
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    // clear all button is touch up inside
    @IBAction func ClearAll(sender: UIButton) {
       self.ScreenLabel.text = "0"
        self.operation = nil
        self.operand2 = nil
        
        updateOperand()
        
        //the last screen is cleared to 0
        //the operation value is nill
        //the operand2 value is nill
        //clears all values and upadates the function is called
        
    }
    
    
    
    
    
    
    
    // clear button is touch up inside
    @IBAction func Clear(sender: UIButton) {
       //only the last label is cleared to 0 and update function is called
        self.ScreenLabel.text = "0"
        updateOperand()
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    // equals buttons is touch up inside
    @IBAction func Equals(sender: UIButton) {
    
        if let operation = self.operation {
            println(operation)
            var result : Float = 0
            switch operation {
                case "+":
                    //add
                result = self.operand1 + self.operand2!
                
            case "-":
                //subtraction
                result = self.operand1 - self.operand2!
                
            case "/":
                //division
                result = self.operand1 / self.operand2!
                
            case "x":
                //multiply
                result = self.operand1 * self.operand2!
                
            default:
                result = 0
            }
        
            self.ScreenLabel.text! = "\(result)"

        
        }
    
        
    
    
    
    }
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    //operations buttons is touch up inside: +-*/
    
    @IBAction func Operations(sender: UIButton) {
        
        self.operation = sender.titleLabel!.text!
        
        //when user presses the operations buttons the text label ! is the operation variable
        
        
        
    }
    
    
    
    func updateOperand() {
        // this function updates the values of operand 1 and operand 2 and converts them into floats
        var currentString:String = self.ScreenLabel.text!
        if self.operation == nil {
            self.operand1 = (currentString as NSString).floatValue
        } else {
            self.operand2 = (currentString as NSString).floatValue
        }
        
        println("operand 1: \(self.operand1)")
        println("operand2 2: \(self.operand2)")
        
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

