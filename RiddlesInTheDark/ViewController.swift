//
//  ViewController.swift
//  RiddlesInTheDark
//
//  Created by Jaeson Booker on 10/19/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func yesterdayAnswer(_ sender: UIButton) {
    }
    @IBOutlet weak var riddleQuestion: UITextView!
    override func viewDidLoad() {
        riddleQuestion.text = "Why do you park in the driveway, but drive in a parkway?"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

