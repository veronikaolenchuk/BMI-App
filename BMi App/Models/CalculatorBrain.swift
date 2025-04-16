//
//  CalculatorBrain.swift
//  BMi App
//
//  Created by Veronika Olenchuk.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / ( height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are underweight", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "You have a normal weight", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "You are overweight", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1) )
        }
    }
    
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
