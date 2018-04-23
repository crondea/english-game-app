//
//  ViewController.swift
//  english-game-app-v2
//
//  Created by Corey Rondeau on 4/21/18.
//  Copyright © 2018 Corey Rondeau. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var CountLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    
    var states : [[Int]] = Array(repeating: Array(repeating: 0, count: 8), count: 50)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stateLbl.text = ""
        questionLbl.text = ""
        CountLbl.text = ""
        statusLbl.text = ""
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var state: Int = 0
    var question: Int = 0
    var foundFlag : Bool = false
    var foundCount : Int = 0

    @IBAction func buttonPressed(_ sender: Any)
    {
        // Generate initial random values
        state = Int(arc4random_uniform(50) + 1)
        question = Int(arc4random_uniform(8) + 1)
        foundFlag = false

        while foundFlag == false
        {
            if (states[state-1][question-1] == 0)
            {
                stateLbl.text = String(state)
                questionLbl.text = String(question)
                states[state-1][question-1] = 1
                foundCount = foundCount + 1
                foundFlag = true
                statusLbl.text = String(1)
            } else {
                
                state = Int(arc4random_uniform(50) + 1)
                question = Int(arc4random_uniform(8) + 1)
                foundFlag = false
                statusLbl.text = String(0)
            }
            CountLbl.text = String(foundCount)
        }
    }
}

