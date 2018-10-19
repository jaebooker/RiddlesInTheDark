//
//  ViewController.swift
//  RiddlesInTheDark
//
//  Created by Jaeson Booker on 10/19/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let formatter : DateFormatter = DateFormatter()
    let riddleDictionary: [String: String] = ["19/10/18": "Why do you park in the driveway, but drive in a parkway?"]
    let riddleAnswerDictionary: [String: String] = ["19/10/18": "Riddle: If the plural for 'goose' is 'geese', why isn't 'moose' meese? \n\nAnswer: Because the English languages is stupid and you should stop asking stupid questions, Timmy! Now shut up and eat your green vegetables!"]
    var todaysRiddle: String = "Why do you park in the driveway, but drive in a parkway?"
    var yesterdaysAnswer: String = "Riddle: If the plural for 'goose' is 'geese', why isn't 'moose' meese? Answer: Because the English languages is stupid and you should stop asking stupid questions, Timmy! Now shut up and eat your green vegetables!"
    var buttonSwitch = 0
    @IBAction func yesterdayAnswer(_ sender: UIButton) {
        formatter.dateFormat = "d/M/yy"
        let myButtonStr : String = formatter.string(from:   NSDate.init(timeIntervalSinceNow: 0) as Date)
        if buttonSwitch == 0 {
            if riddleAnswerDictionary[myButtonStr] != nil {
                riddleQuestion.text = riddleAnswerDictionary[myButtonStr]
            } else {
                riddleQuestion.text = "There wasn't a riddle yesterday."
            }
            buttonSwitch = 1
        } else {
            if riddleDictionary[myButtonStr] != nil {
                riddleQuestion.text = riddleDictionary[myButtonStr]
            } else {
                riddleQuestion.text = "No riddle tonight, try again tomorrow."
            }
            buttonSwitch = 0
        }
    }
    @IBOutlet weak var riddleQuestion: UITextView!
    override func viewDidLoad() {
        formatter.dateFormat = "d/M/yy"
        let myStr : String = formatter.string(from:   NSDate.init(timeIntervalSinceNow: 0) as Date)
        if riddleDictionary[myStr] != nil {
            riddleQuestion.text = riddleDictionary[myStr]
        } else {
            riddleQuestion.text = "No riddle tonight, try again tomorrow."
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

