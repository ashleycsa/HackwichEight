//
//  ViewController.swift
//  HackwichEight
//
//  Created by Ashley Aurellano on 3/10/20.
//  Copyright © 2020 Ashley Aurellano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    //create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    //Part 3&4, part 2a
    var targetValue: Int = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part 3&4, part 1 - set currentValue to the initial value of the slider
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 0...100)
        
        //call startNewRound
        startNewRound()
    }

  
    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        //5. new variable message that displays a message that includes currentValue
          //Part 3&4, Part 2 #5 - Display currentValue and targetValue in the alert view’s message
           let message = "The current slider value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
           
           //1. create alert view
           let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
           
           //2. button that user taps to dismiss view controller
           //Part 3&4, Problem set 2
           let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
                
           //3. add the button to alertview
           alert.addAction(action)
                
           //4. present alertview on the screen
           present(alert, animated: true, completion: nil)
           
           //Part 3&4, part 3 #3-5
           startNewRound()
    }
    
    
    @IBAction func sliderHasMoved(_ sender: Any)
    {
        print("The value of the slider is:\(slider.value)")
        //slider value's data type is Float, while currentValue data type is Int. this convertsthe Float value to Int value
        currentValue = lroundf(slider.value)
        
        //Part 3&4, part 3 - create new round function
      }
    
    func startNewRound ()
    {
        targetValue = Int.random(in: 0...100)
        currentValue = lroundf(slider.value)
        
        //Part 3&4, problem set 1, part 3
        updateTargetLabel()
    }
    
    //Part 3&4, problem set 1, part 2
    func updateTargetLabel ()
    {
        self.targetLabel.text = "\(targetValue)"
    }

}
