//
//  ViewController.swift
//  QuizApp
//
//  Created by Admin on 11/5/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var questLabel: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
   
    
    var count: Int = 0
    var result:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count += 1
        result = 0
        allQuestion()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let question: Array<String> = ["Which keyword is used to declare a constants?","Which keyword is used to declare a variable?","Which type is mutable?"," In Array we store mutliple values?","Swift is not a type-safe language?","How can we declare an Array?","How can we declare an Set?","How can we declare an Dictionary?","How can we unwrap optional values?","Which keyword is using to declare function?"]
    let corrAnswers: Array<String> = ["let","var","struct","false","true","var a: Array<String>","var a: Void<String>",
                                      "var a: Set<String>","var a: Dictionary<Int,String>","!","function","func","void","?"]
    
    
    @IBAction func buttonOne(_ sender: AnyObject) {
        firstButton.backgroundColor = UIColor.brown
        secondButton.backgroundColor = UIColor.orange
        thirdButton.backgroundColor = UIColor.orange
        fourthButton.backgroundColor = UIColor.orange
             
    }
    @IBAction func buttonTwo(_ sender: AnyObject) {
        firstButton.backgroundColor = UIColor.orange
        secondButton.backgroundColor = UIColor.brown
        thirdButton.backgroundColor = UIColor.orange
        fourthButton.backgroundColor = UIColor.orange
  

    }
    @IBAction func buttonThree(_ sender: AnyObject) {
        firstButton.backgroundColor = UIColor.orange
        secondButton.backgroundColor = UIColor.orange
        thirdButton.backgroundColor = UIColor.brown
        fourthButton.backgroundColor = UIColor.orange
    }
    @IBAction func buttonFour(_ sender: AnyObject) {
        firstButton.backgroundColor = UIColor.orange
        secondButton.backgroundColor = UIColor.orange
        thirdButton.backgroundColor = UIColor.orange
        fourthButton.backgroundColor = UIColor.brown
    }
    
     
    @IBAction func nextButton(_ sender: AnyObject) {
        checkingAnswers()
        count += 1
        allQuestion()
        checkingAnswers()
    }
    //Question wise functions
    func allQuestion()
    {
        if count == 1
        {
            displayQuestionOne()
        }
        else if count == 2
        {
            displayQuestionTwo()
        }
        else if count == 3
        {
            displayQuestionThree()
        }
        else if count == 4
        {
            displayQuestionFour()
        }
        else if count == 5
        {
            displayQuestionFive()
        }
        else if count == 6
        {
            displayQuestionSix()
        }
        else if count == 7
        {
            displayQuestionSeven()
        }
        else if count == 8
        {
            displayQuestionEight()
        }
        else if count == 9
        {
            displayQuestionNine()
        }
        else if count == 10
        {
            displayQuestionTen()
        }
        else if count == 11
        {
            showResult()
        }
    }
      //Reset Buttons color when changing questions
    func defaultColor()
    {
        firstButton.backgroundColor? = UIColor.orange
        secondButton.backgroundColor? = UIColor.orange
        thirdButton.backgroundColor? = UIColor.orange
        fourthButton.backgroundColor? = UIColor.orange

    }
    // Answers
    /*["let","var","struct","false","true","var: Array<String>","var: Void<String>",
    "var: Set<String>","var: Dictionary<Int,String>","!","function","func","void","?"]*/
    
    //Question No-1
    //Which keyword using to declare constants?"
    func displayQuestionOne()
    {
        questLabel.text = question[0]
        firstButton.setTitle(corrAnswers[0], for: UIControlState.normal) //let (correct)
         secondButton.setTitle(corrAnswers[1], for: UIControlState.normal) //var
         thirdButton.setTitle(corrAnswers[2], for: UIControlState.normal) //struct
         fourthButton.setTitle(corrAnswers[3], for: UIControlState.normal) //false
        defaultColor()
    }
     //Question No-2
    //"Which keyword using to declare variable?"
    func displayQuestionTwo()
    {
        
        questLabel.text = question[1]
        firstButton.setTitle(corrAnswers[4], for: UIControlState.normal) //true
        secondButton.setTitle(corrAnswers[1], for: UIControlState.normal) //var  (correct)∂
        thirdButton.setTitle(corrAnswers[3], for: UIControlState.normal) //false
        fourthButton.setTitle(corrAnswers[0], for: UIControlState.normal) //let
        defaultColor()
    }
     //Question No-3
    //"Which are mutable?"
    func displayQuestionThree()
    {
        questLabel.text = question[2]
        firstButton.setTitle(corrAnswers[4], for: UIControlState.normal) //true
        secondButton.setTitle(corrAnswers[0], for: UIControlState.normal) //let
        thirdButton.setTitle(corrAnswers[3], for: UIControlState.normal) //false
        fourthButton.setTitle(corrAnswers[1], for: UIControlState.normal) //var (correct)
        defaultColor()
    }
     //Question No-4
    //"Array are collections?"
    func displayQuestionFour()
    {
        questLabel.text = question[3]
        firstButton.setTitle(corrAnswers[0], for: UIControlState.normal) //let
        secondButton.setTitle(corrAnswers[1], for: UIControlState.normal) //var
        thirdButton.setTitle(corrAnswers[4], for: UIControlState.normal) //true (correct)
        fourthButton.setTitle(corrAnswers[3], for: UIControlState.normal) //false
        defaultColor()
    }
     //Question No-5
    //"Swift are not type safety language ?"
    func displayQuestionFive()
    {
        questLabel.text = question[4]
        firstButton.setTitle(corrAnswers[2], for: UIControlState.normal) //struct
        secondButton.setTitle(corrAnswers[1], for: UIControlState.normal) //var
        thirdButton.setTitle(corrAnswers[3], for: UIControlState.normal) //false (coorect)
        fourthButton.setTitle(corrAnswers[4], for: UIControlState.normal) // true
        defaultColor()
        
        
        
    }
    /*["let","var","struct","false","true","var: Array<String>","var: Void<String>",
     "var: Set<String>","var: Dictionary<Int,String>","!","function","func","void","?"]*/
    //Question No-6
    //"How can we declare an Array?"
    func displayQuestionSix()
    {
        questLabel.text = question[5]
        firstButton.setTitle(corrAnswers[5], for: UIControlState.normal) //Array (correct)
        secondButton.setTitle(corrAnswers[6], for: UIControlState.normal) //void
        thirdButton.setTitle(corrAnswers[7], for: UIControlState.normal) //Set
        fourthButton.setTitle(corrAnswers[8], for: UIControlState.normal) //Dictionary
        defaultColor()
    }
     //Question No-7
    //"How can we declare an Set?",
    func displayQuestionSeven()
    {
        questLabel.text = question[6]
        firstButton.setTitle(corrAnswers[8], for: UIControlState.normal) //Array
        secondButton.setTitle(corrAnswers[7], for: UIControlState.normal) //Set (correct)
        thirdButton.setTitle(corrAnswers[6], for: UIControlState.normal) //void
        fourthButton.setTitle(corrAnswers[5], for: UIControlState.normal) //Dictionary
        defaultColor()
    }
     //Question No-8
    //"How can we declare an Dictionary?"
    func displayQuestionEight()
    {
        questLabel.text = question[7]
        firstButton.setTitle(corrAnswers[7], for: UIControlState.normal) //Array
        secondButton.setTitle(corrAnswers[8], for: UIControlState.normal) //Dictionary (correct)
        thirdButton.setTitle(corrAnswers[5], for: UIControlState.normal) //Set
        fourthButton.setTitle(corrAnswers[6], for: UIControlState.normal) //void
        defaultColor()
    }
     //Question No-9
    //How can we unwrap optional values",
    func displayQuestionNine()
    {
        questLabel.text = question[8]
        firstButton.setTitle(corrAnswers[0], for: UIControlState.normal) //let
        secondButton.setTitle(corrAnswers[12], for: UIControlState.normal) //void
        thirdButton.setTitle(corrAnswers[9], for: UIControlState.normal) //! (correct)
        fourthButton.setTitle(corrAnswers[2], for: UIControlState.normal) //struct
        defaultColor()
    }
     //Question No-10
    //"Which keyword is using to declare function?"

    func displayQuestionTen()
    {
        questLabel.text = question[9]
        firstButton.setTitle(corrAnswers[11], for: UIControlState.normal) // func (correct)
        secondButton.setTitle(corrAnswers[13], for: UIControlState.normal) //?
        thirdButton.setTitle(corrAnswers[9], for: UIControlState.normal) //!
        fourthButton.setTitle(corrAnswers[10], for: UIControlState.normal) //function
        defaultColor()
        
        //moving to show result
        
        nextBtn.setTitle("Finished", for: UIControlState.normal)

    }

    //show result
    func showResult()
    {
        firstButton.isHidden = true
        secondButton.isHidden = true
        thirdButton.isHidden = true
        fourthButton.isHidden = true
        
        nextBtn.isHidden = true

      
        
        questLabel.font = UIFont(name: "Arial", size: 50)
        if result >= 50
        {
            questLabel.textColor = UIColor.init(red: 255/255, green: 150/255, blue: 80/255, alpha: 1)
             questLabel.text  = "Result \(result) \("%") Pass 😊"
           
          
            
        }
        else
        {
            questLabel.textColor = UIColor.red
              questLabel.text  = "Result \(result) \("%") Fail 🙁"
        }
        
    }
    
      //Marking for Result
    func checkingAnswers()
    {
        if  questLabel.text == question[0]
        {
            if  firstButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
        if  questLabel.text == question[1]
        {
            if  secondButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
            
        }
        if  questLabel.text == question[2]
        {
            if  fourthButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
            
        }
        if  questLabel.text == question[3]
        {
            if  thirdButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
        if  questLabel.text == question[4]
        {
            if  thirdButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
       if  questLabel.text == question[5]
        {
            if  firstButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
        if  questLabel.text == question[6]
        {
            if  secondButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
         if  questLabel.text == question[7]
        {
            if  secondButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
         if  questLabel.text == question[8]
        {
            if  thirdButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
         if  questLabel.text == question[9]
        {
            if  firstButton.backgroundColor == UIColor.brown
            {
                result += 10
            }
        }
    }

}

