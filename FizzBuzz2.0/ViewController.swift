//
//  ViewController.swift
//  FizzBuzz2.0
//
//  Created by Administrator on 6/19/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countNumber = 0
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func changeLabels(_ sender: Any) {
        countNumber += 1
        myNumber.text = String(countNumber)
        
        var position = myNumber.center
        position = CGPoint(x: position.x, y: position.y-6)
        myNumber.center = position
        
        if (countNumber % 3 == 0 && countNumber % 5 == 0){
            myLabel.text = "Fizz Buzz"
        } else if (countNumber % 3 == 0 && countNumber % 5 != 0){
            myLabel.text = "Fizz"
        } else if (countNumber % 3 != 0 && countNumber % 5 == 0){
            myLabel.text = "Buzz"
        } else {
            myLabel.text = String(countNumber)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

