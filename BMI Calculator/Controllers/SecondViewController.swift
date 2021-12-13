//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by bhavesh on 13/12/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet fileprivate weak var resultLabel: UILabel!
    @IBOutlet fileprivate weak var adviseLabel: UILabel!

    var bmiValue: String = ""
    var adviseText: String = ""
    var color: UIColor = .white

    override func viewDidLoad() {
        super.viewDidLoad()
        initialDataSetup()
    }


    fileprivate func initialDataSetup() {
        resultLabel.text = bmiValue
        adviseLabel.text = adviseText
        view.backgroundColor = color
    }


    @IBAction func recalculateClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
