🏃‍♂️🔥 Fitness Tracker App

A simple and interactive iOS application that calculates the calories burned based on user activity.
Built using Swift, UIKit, and Storyboard Navigation.

---

🚀 Features

Input Activity Type, Duration, and Calories per Minute

Automatic field validation — Calculate button activates only when all fields are filled

Accurate calorie calculation

Result screen displays all details with a smooth fade-in animation

Activity-based image display (Running, Cycling, Swimming)

Resets text fields when returning to the home screen

Clean two-screen flow using prepare(for:segue:)

---

🖥️ App Screens (Replace with your actual images)
Home Screen	Result Screen

---

📂 Project Structure
FitnessTrackerApp
│
├── ViewController.swift         # Input screen logic
├── ResultViewController.swift   # Result screen + animations
├── Assets/
│   ├── running.png
│   ├── cycling.png
│   ├── swimming.png
│   └── default.png
└── Main.storyboard              # UI layout

---

🧮 How the App Works
1️⃣ User Enters:

Activity Type

Duration (minutes)

Calories per Minute

The Calculate button becomes active only when all fields contain valid data.

---

2️⃣ Calculation Formula
totalCaloriesBurned = duration × caloriesPerMinute

3️⃣ Navigation

Upon tapping Calculate, the app passes data to the next screen using:

override func prepare(for segue: UIStoryboardSegue, sender: Any?)

4️⃣ Result Screen

---

Displays:

Activity Type

Duration

Calories per Minute

Total Calories Burned

---

Plus:
🎨 An image that matches the activity
✨ A fade-in animation for visual polish

🧩 Important Code Snippets
Text Field Validation
@objc func textFieldsDidChange() {
    let allFilled =
        !(ActivityOutlet.text?.isEmpty ?? true) &&
        !(DurationOutlet.text?.isEmpty ?? true) &&
        !(CaloriesPerMinuteOutlet.text?.isEmpty ?? true)

    calculateButton.isEnabled = allFilled
    calculateButton.alpha = allFilled ? 1.0 : 0.5
}

Fade-In Image Animation
imageView.alpha = 0.0
UIView.animate(withDuration: 1.5) {
    self.imageView.alpha = 1.0
}

Passing Data with Segue
destination.activityType = activityType
destination.duration = duration
destination.caloriesPerMinute = caloriesPerMinute
destination.totalCaloriesBurned = totalCaloriesBurned

---

🛠️ Requirements

Xcode 15+

iOS 15+

Swift 5+

UIKit + Storyboard

---

📦 How to Run the App

Clone the repository

Open FitnessTrackerApp.xcodeproj in Xcode

Run on Simulator or a physical device

Enter details → Tap Calculate → View calories burned

---

👨‍💻 Author

Bhavesh Goswami
