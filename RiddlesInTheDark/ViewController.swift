//
//  ViewController.swift
//  RiddlesInTheDark
//
//  Created by Jaeson Booker on 10/19/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var buttonSwitch = 0
    @IBAction func yesterdayAnswer(_ sender: UIButton) {
        if buttonSwitch == 0 {
        riddleQuestion.text = "If the plural for 'goose' is 'geese', why isn't 'moose' meese?"
        buttonSwitch = 1
        } else {
        riddleQuestion.text = "Why do you park in the driveway, but drive in a parkway?"
        buttonSwitch = 0
        }
    }
    @IBOutlet weak var riddleQuestion: UITextView!
    override func viewDidLoad() {
        riddleQuestion.text = "Why do you park in the driveway, but drive in a parkway?"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

