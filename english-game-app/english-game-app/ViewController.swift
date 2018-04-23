//
//  ViewController.swift
//  english-game-app
//
//  Created by Corey Rondeau on 4/21/18.
//  Copyright © 2018 Corey Rondeau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stateLbl.text = ""
        questionLbl.text = ""
    }
    
    @IBAction func playBtnPressed(_ sender: Any) {
        stateLbl.text = "hello"
        questionLbl.text = "world"
    }

//        var foundFlag : Bool = false
//
//        // Generate initial random values
//        var state: Int = Int(arc4random_uniform(50) + 1)
//        var question: Int = Int(arc4random_uniform(8) + 1)
//
//        var selectedQuestion = states[state][question]
//        //print("Int:", selectedQuestion)
//
//        while foundFlag == false{
//            if selectedQuestion == 0 {
//                //        self.stateLbl.text = String(state)
//                //        self.questionLbl.text = String(question)
//                states[state][question] = 1
//                foundFlag = true
//            } else {
//                // We need a new question, so generate new values
//                state = Int(arc4random_uniform(50) + 1)
//                question = Int(arc4random_uniform(8) + 1)
//                selectedQuestion = states[state][question]
//                print("Int:", selectedQuestion)
//            }
//        }
}


