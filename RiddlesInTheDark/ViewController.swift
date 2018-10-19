//
//  ViewController.swift
//  RiddlesInTheDark
//
//  Created by Jaeson Booker on 10/19/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//
//Credit for some riddles go to FiveThirtyEight, WaitButWhy, and J.R.R Tolkien
import UIKit

class ViewController: UIViewController {
    //creating date formatter
    let formatter : DateFormatter = DateFormatter()
    //creating riddle dictionary
    let riddleDictionary: [String: String] = ["19/10/18": riddle1, "19/11/18": riddle2, "19/12/18": riddle3, "19/13/18": riddle4, "19/14/18": riddle5, "19/15/18": riddle6]
    //creating riddle answer dictionary, for yesterday's riddles
    let riddleAnswerDictionary: [String: String] = ["19/10/18": answer1, "19/11/18": answer2, "19/12/18": answer3, "19/13/18": answer4, "19/14/18": answer5, "19/15/18": answer6]
    //creating switch to determine if you want to view today's riddle or yesterday's answer
    var buttonSwitch = 0
    @IBAction func yesterdayAnswer(_ sender: UIButton) {
        //get date of time, using correct format
        formatter.dateFormat = "d/M/yy"
        //setting button to equal string version
        let myButtonStr : String = formatter.string(from:   NSDate.init(timeIntervalSinceNow: 0) as Date)
        //if button has only been pressed once
        if buttonSwitch == 0 {
            //checks against nil value
            if riddleAnswerDictionary[myButtonStr] != nil {
                //sets text to equal yesterday's riddle and answer
                riddleQuestion.text = riddleAnswerDictionary[myButtonStr]
            } else {
                riddleQuestion.text = "There wasn't a riddle yesterday."
            }
            //switch button, so if pressed again, takes user back
            buttonSwitch = 1
        } else {
            if riddleDictionary[myButtonStr] != nil {
                //sets to equal riddle question for today
                riddleQuestion.text = riddleDictionary[myButtonStr]
            } else {
                riddleQuestion.text = "No riddle tonight, try again tomorrow."
            }
            //switches button back
            buttonSwitch = 0
        }
    }
    @IBOutlet weak var riddleQuestion: UITextView!
    override func viewDidLoad() {
        formatter.dateFormat = "d/M/yy"
        let myStr : String = formatter.string(from:   NSDate.init(timeIntervalSinceNow: 0) as Date)
        if riddleDictionary[myStr] != nil {
            //gets riddle for today
            riddleQuestion.text = riddleDictionary[myStr]
        } else {
            //if there are no riddles
            riddleQuestion.text = "No riddle tonight, try again tomorrow."
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
//list of riddles. Idealy, this would be an API or Firebase database.
let riddle0: String = "You're a thief, and you've managed to break into the vault of an ancient bank filled with 100 sacks of coins. One of the sacks contains gold coins, while the other 99 are filled with counterfeit gold coins. You cannot tell the difference between the gold coins and the fakes by handling the coins, looking at them, biting them, or testing them.\n\nThe fake coins weigh exactly 1 ounce each, while the real gold coins weigh 1.01 ounces. There is a large scale with enough room for all the sacks in the vault, but as soon as you weigh something it will trigger an alarm, so you can use the scale just once before you must flee the vault.\n\nHow can you figure out which sack of coins contains the real gold by only weighing something on the scale once?"
let riddle1: String = "Ten Perfectly Rational Pirate Logicians (PRPLs) find 10 (indivisible) gold pieces and wish to distribute the booty among themselves.\nThe pirates each have a unique rank, from the captain on down. The captain puts forth the first plan to divide up the gold, whereupon the pirates (including the captain) vote. If at least half the pirates vote for the plan, it is enacted, and the gold is distributed accordingly. If the plan gets fewer than half the votes, however, the captain is killed, the second-in-command is promoted, and the process starts over. (They’re mutinous, these PRPLs.)\n\nPirates always vote by the following rules, with the earliest rule taking precedence in a conflict:\n\nSelf-preservation: A pirate values his life above all else.\nGreed: A pirate seeks as much gold as possible.\nBloodthirst: Failing a threat to his life or bounty, a pirate always votes to kill.\n\nUnder this system, how do the PRPLs divide up their gold?"
let riddle2: String = "What has roots as nobody sees,\nIs taller than trees,\nUp, up it goes,\nAnd yet never grows?"
let riddle3: String = "Voiceless it cries,\nWingless flutters,\nToothless bites,\nMouthless mutters."
let riddle4: String = "It cannot be seen, cannot be felt,\nCannot be heard, cannot be smelt.\nIt lies behind stars and under hills,\nAnd empty holes it fills.\nIt comes out first and follows after,\nEnds life, kills laughter."
let riddle5: String = "Alive without breath,\nAs cold as death;\nNever thirsty, ever drinking,\nAll in mail never clinking."
let riddle6: String = "This thing all things devours;\nBirds, beasts, trees, flowers;\nGnaws iron, bites steel;\nGrinds hard stones to meal;\nSlays king, ruins town,\nand beats mountain down."
//creating answers, with corresponding riddle added to them
let answer1: String = riddle0 + "\n\nAnswer: Label the sacks 1 to 100, and take a number of coins out of each sack equal to the number on the label. So take 1 coin out of the first sack, 2 coins out of the second sack, and so on up to 100. Weigh all these coins together on the scale.\n\nIf all the coins weighed exactly 1 ounce, then you would get 5050 ounces. (You can crank this out on a calculator, or use this math equation to quickly calculate your answer: 100 x 101 / 2 = 5050.) But the gold coins weigh 1.01 ounces. So, if you weigh your pile of coins and get 5050.01 ounces, then the gold coins are in the sack labeled 1. If you get 5050.42 ounces, the gold coins are in the sack labeled 42. If you happen to get 5051 ounces, the gold coins are in the sack labeled 100."
let answer2: String = riddle1 + "\n\nAnswer: So the solution, divided up, starting with yourself, is: 6, 0, 1, 0, 1, 0, 1, 0, 1, 0. See https://waitbutwhy.com/2016/06/pirate-booty-puzzle.html for a full explanation. This one gets pretty complex."
let answer3: String = riddle2 + "\n\nAnswer: A Mountain."
let answer4: String = riddle3 + "\n\nAnswer: Wind."
let answer5: String = riddle4 + "\n\nAnswer: Dark."
let answer6: String = riddle5 + "\n\nAnswer: Fish."
let answer7: String = riddle6 + "\n\nAnswer: Time."
