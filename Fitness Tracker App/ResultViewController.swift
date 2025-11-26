//
//  ResultViewController.swift
//  Goswami_Practice_Exam02
//
//  Created by Bhavesh on 10/28/25.
//
import UIKit

class ResultViewController: UIViewController {

       @IBOutlet weak var activityTypeLabel: UILabel!
       @IBOutlet weak var durationLabel: UILabel!
       @IBOutlet weak var caloriesLabel: UILabel!
       @IBOutlet weak var totalCaloriesLabel: UILabel!
       @IBOutlet weak var imageView: UIImageView!
       
       var activityType: String = ""
       var duration: Double = 0.0
       var caloriesPerMinute: Double = 0.0
       var totalCaloriesBurned: Double = 0.0

       override func viewDidLoad() {
           super.viewDidLoad()
           activityTypeLabel.text = "Activity Type: \(activityType)"
           durationLabel.text = "Duration (Minutes): \(Int(duration))"
           caloriesLabel.text = "Calories per Minute: \(Int(caloriesPerMinute))"
           totalCaloriesLabel.text = "Total Calories Burned: \(Int(totalCaloriesBurned))"
           
           switch activityType {
           case "running":
               imageView.image = UIImage(named: "running")
           case "cycling":
               imageView.image = UIImage(named: "cycling")
           case "swimming":
               imageView.image = UIImage(named: "swimming")
           default:
               imageView.image = UIImage(named: "default")
           }
           
           imageView.alpha = 0.0
           UIView.animate(withDuration: 1.5) {
               self.imageView.alpha = 1.0
           }
       }
   }

