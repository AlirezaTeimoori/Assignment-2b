//
// ViewController.swift
//
// Created by Patrick Coxall on 2016-10-05.
// This program shows basic UIKit elements working in an iPad Playground
//

// Edited by Alireza Teimoori
// Edited on 30 Sep 2017
// This code uses Mr.Coxall's template to calculate a person's height above the ground in seconds(entred by user)

import UIKit

// comment out line below and one at bottom, to make code work in Xcode
import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var secondinstructionLable : UILabel!
    var timeLable : UILabel!
    var timeTextField : UITextField!
    var calculateButton : UIButton!
    var answerLabel : UILabel!
    let GRAVITY = Float(9.81)
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        // create all the UIElements
        instructionLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 500, height: 50))
        instructionLabel.text = "Someone is falling from a place 100m above the ground."
        view.addSubview(instructionLabel)
        
        secondinstructionLable = UILabel(frame: CGRect(x: 50, y: 80, width: 500, height: 50))
        secondinstructionLable.text = "Enter time (seconds) to get the persons height at that time:"
        view.addSubview(secondinstructionLable)
        
        timeLable = UILabel(frame: CGRect(x: 100, y: 150, width: 500, height: 50))
        timeLable.text = "Enter time"
        view.addSubview(timeLable)
        
        timeTextField = UITextField(frame: CGRect(x: 200, y: 150, width: 200, height: 50))
        timeTextField.borderStyle = UITextBorderStyle.roundedRect
        timeTextField.placeholder = "In seconds"
        view.addSubview(timeTextField)
        
        calculateButton = UIButton(frame: CGRect(x: 100, y: 230, width: 100, height: 50))
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        calculateButton.addTarget(self, action: #selector(calculateHeight), for: UIControlEvents.touchUpInside)
        view.addSubview(calculateButton)
        
        answerLabel = UILabel(frame: CGRect(x: 50, y: 350, width: 500, height: 50))
        answerLabel.text = nil
        view.addSubview(answerLabel)
        
    }
    
    @objc func calculateHeight() {
        // calculate the person's height
        
        let time : Float =  Float(timeTextField.text!)!
        if time >= 0{
            
            let height = 100-(GRAVITY*time*time)/2.0
            if height >= 0 {
                answerLabel.text = "The person's height at that time is: \(height) m above the ground."
            }else{answerLabel.text = "The person has hit the ground"}
        }
    }
    
    // this is for when code is moved to Xcode, the Status bar will be removed
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to also comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()

