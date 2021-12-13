//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        let text = String(format: "%0.2F", sender.value)
        heightValueLabel.text = "\(text) m"
    }

    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        weightValueLabel.text = "\(Int(sender.value)) kg"
    }

    @IBAction func calculateClicked(_ sender: UIButton) {

        calculatorBrain.calcuateBMI(height: heightSlider.value,
                                    weight: weightSlider.value)

        moveToResult()
    }


    func moveToResult() {
        let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: SecondViewController.self)) as! SecondViewController

        resultVC.bmiValue = calculatorBrain.getBMI()
        resultVC.adviseText = calculatorBrain.getAdvice()
        resultVC.color = calculatorBrain.getColor()

        resultVC.modalPresentationStyle = .formSheet

        self.present(resultVC, animated: true, completion: nil)
    }

}

