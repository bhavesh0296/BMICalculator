//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by bhavesh on 13/12/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {

    private var bmi: BMI?

    mutating func calcuateBMI(height: Float, weight: Float) {
        let value = weight / (height*height)

        if value < 18.5 {
            bmi = BMI(value: value,
                      advice: "Eat More Pies!",
                      color: .blue)

        } else if value >= 18.5 && value <= 24.9 {
            bmi = BMI(value: value,
                      advice: "Fit as Fiddle!",
                      color: .green)

        } else if value > 24.9 {
            bmi = BMI(value: value,
                      advice: "Eat less Pies",
                      color: .purple)
        }
    }

    func getBMI() -> String {
        return String(format: "%0.2f", bmi?.value ?? 0.0)
    }

    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }

    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
