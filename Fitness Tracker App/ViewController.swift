//
//  ViewController.swift
//  Goswami_Practice_Exam02
//
//  Created by Bhavesh on 10/28/25.
//

import UIKit

class ViewController: UIViewController {
    // outlets
        @IBOutlet weak var ActivityOutlet: UITextField!
        @IBOutlet weak var DurationOutlet: UITextField!
        @IBOutlet weak var CaloriesPerMinuteOutlet: UITextField!
        @IBOutlet weak var calculateButton: UIButton!
    
        var totalCaloriesBurned: Double = 0.0
        var activityType: String = ""
        var duration: Double = 0.0
        var caloriesPerMinute: Double = 0.0

        override func viewDidLoad() {
            super.viewDidLoad()
            calculateButton.isEnabled = false
            calculateButton.alpha = 0.5
            ActivityOutlet.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
                    DurationOutlet.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
                    CaloriesPerMinuteOutlet.addTarget(self, action: #selector(textFieldsDidChange), for: .editingChanged)
        }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Reset input fields
            ActivityOutlet.text = ""
            DurationOutlet.text = ""
            CaloriesPerMinuteOutlet.text = ""
            calculateButton.isEnabled = false
            calculateButton.alpha = 0.5
        }
    @objc func textFieldsDidChange() {
        if !(ActivityOutlet.text?.isEmpty ?? true) &&
                   !(DurationOutlet.text?.isEmpty ?? true) &&
                   !(CaloriesPerMinuteOutlet.text?.isEmpty ?? true) {
                    calculateButton.isEnabled = true
                    calculateButton.alpha = 1.0
                } else {
                    calculateButton.isEnabled = false
                    calculateButton.alpha = 0.5
                }
        }
        @IBAction func CalculateCalories(_ sender: UIButton) {
            guard let activity = ActivityOutlet.text,
                  let durationText = DurationOutlet.text,
                  let caloriesText = CaloriesPerMinuteOutlet.text,
                  !activity.isEmpty, !durationText.isEmpty, !caloriesText.isEmpty,
                  let durationValue = Double(durationText),
                  let caloriesValue = Double(caloriesText) else {
                
                let alert = UIAlertController(title: "Missing Data", message: "Please enter all values before calculating.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                present(alert, animated: true)
                return
            }
            
            activityType = activity.lowercased()
            duration = durationValue
            caloriesPerMinute = caloriesValue
            
            totalCaloriesBurned = duration * caloriesPerMinute
             
        }
    
    
        @IBAction func ResetFields(_ sender: UIButton) {
            ActivityOutlet.text = ""
            DurationOutlet.text = ""
            CaloriesPerMinuteOutlet.text = ""
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ResultSegue" {
                if let destination = segue.destination as? ResultViewController {
                    destination.activityType = activityType
                    destination.duration = duration
                    destination.caloriesPerMinute = caloriesPerMinute
                    destination.totalCaloriesBurned = totalCaloriesBurned
                }
            }
        }
}


