
import Foundation
import UIKit

struct CalculatorBrain {
    
    // MARK: Variables
    var bmi : BMI?
    
    // MARK: Functions
    mutating func calculateBMI (weight: Float, height: Float) {
        
        let bmiValue = weight / pow(height,2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? .green
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
        
    }
    
}
