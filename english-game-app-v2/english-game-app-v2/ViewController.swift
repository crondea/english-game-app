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
    @IBOutlet weak var responseLbl: UILabel!
    @IBOutlet weak var stateNameLbl: UILabel!
    
    var states : [[Int]] = Array(repeating: Array(repeating: 0, count: 8), count: 50)
    var stateNames : [String] = Array(repeating: "", count: 50)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stateLbl.text = ""
        questionLbl.text = ""
        responseLbl.text = ""
        stateNameLbl.text = ""
        
        // Add state names here
        stateNames[0] = "Alabama"
        stateNames[1] = "Alaska"
        stateNames[2] = "Arizona"
        stateNames[3] = "Arkansas"
        stateNames[4] = "California"
        stateNames[5] = "Colorado"
        stateNames[6] = "Connecticut"
        stateNames[7] = "Delaware"
        stateNames[8] = "Florida"
        stateNames[9] = "Georgia"
        stateNames[10] = "Hawaii"
        stateNames[11] = "Idaho"
        stateNames[12] = "Illinois"
        stateNames[13] = "Indiana"
        stateNames[14] = "Iowa"
        stateNames[15] = "Kansas"
        stateNames[16] = "Kentucky"
        stateNames[17] = "Louisiana"
        stateNames[18] = "Maine"
        stateNames[19] = "Maryland"
        stateNames[20] = "Massachusetts"
        stateNames[21] = "Michigan"
        stateNames[22] = "Minnesota"
        stateNames[23] = "Mississippi"
        stateNames[24] = "Missouri"
        stateNames[25] = "Montana"
        stateNames[26] = "Nebraska"
        stateNames[27] = "Nevada"
        stateNames[28] = "New Hampshire"
        stateNames[29] = "New Jersey"
        stateNames[30] = "New Mexico"
        stateNames[31] = "New York"
        stateNames[32] = "North Carolina"
        stateNames[33] = "North Dakota"
        stateNames[34] = "Ohio"
        stateNames[35] = "Oklahoma"
        stateNames[36] = "Oregon"
        stateNames[37] = "Pennsylvania"
        stateNames[38] = "Rhode Island"
        stateNames[39] = "South Carolina"
        stateNames[40] = "South Dakota"
        stateNames[41] = "Tennessee"
        stateNames[42] = "Texas"
        stateNames[43] = "Utah"
        stateNames[44] = "Vermont"
        stateNames[45] = "Virginia"
        stateNames[46] = "Washington"
        stateNames[47] = "West Virginia"
        stateNames[48] = "Wisconsin"
        stateNames[49] = "Wyoming"
        
    }
    
    var state: Int = 0
    var question: Int = 0
    var foundFlag : Bool = false

    @IBAction func questionBtn(_ sender: Any)
    {
        responseLbl.text = ""
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
                stateNameLbl.text = stateNames[state-1]
                foundFlag = true
            } else {
                state = Int(arc4random_uniform(50) + 1)
                question = Int(arc4random_uniform(8) + 1)
                foundFlag = false
            }
        }
    }
    @IBAction func buttonPressed(_ sender: Any)
    {
    }
    
    @IBAction func noBtn(_ sender: Any)
    {
        responseLbl.text = "Try again next time!"
    }
    @IBAction func yesBtn(_ sender: Any)
    {
        states[state-1][question-1] = 1
        responseLbl.text = "Congratulations!"
    }
    
    @IBAction func resetBtn(_ sender: Any)
    {
        states = Array(repeating: Array(repeating: 0, count: 8), count: 50)
        stateLbl.text = ""
        questionLbl.text = ""
        responseLbl.text = ""
        stateNameLbl.text = ""
    }
}

