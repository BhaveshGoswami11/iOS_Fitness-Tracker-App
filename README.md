# 🏃‍♂️🔥 Fitness Tracker App

A clean and interactive iOS application that calculates calories burned based on user activity.  
Built with **Swift**, **UIKit**, and **Storyboard Navigation**, this app provides a smooth two-screen experience with animations, validation, and activity-based visuals.

---

## 🚀 Features

- Enter **Activity Type**, **Duration**, and **Calories per Minute**
- **Automatic field validation** — the *Calculate* button activates only when all inputs are filled
- Accurate real-time calorie calculation
- Detailed result screen with **fade-in animations**
- Dynamically displayed images for **Running**, **Cycling**, and **Swimming**
- Text fields reset automatically when navigating back
- Seamless two-screen navigation using `prepare(for: segue:)`

---

## 📱 App Preview

| Home Screen | Running | Cycling | Swimming |
|-------------|---------|---------|----------|
| ![Home Screen](https://github.com/BhaveshGoswami11/iOS_Fitness-Tracker-App/blob/main/SneakPeek%20Of%20App/Home%20Screen.png?raw=true) | ![Running](https://github.com/BhaveshGoswami11/iOS_Fitness-Tracker-App/blob/main/SneakPeek%20Of%20App/RUNNING.png?raw=true) | ![Cycling](https://github.com/BhaveshGoswami11/iOS_Fitness-Tracker-App/blob/main/SneakPeek%20Of%20App/CYCLING.png?raw=true) | ![Swimming](https://github.com/BhaveshGoswami11/iOS_Fitness-Tracker-App/blob/main/SneakPeek%20Of%20App/Swimming.png?raw=true) |

---

## 📂 Project Structure

FitnessTrackerApp
│
├── ViewController.swift # Input screen logic
├── ResultViewController.swift # Result screen + animations
├── Assets/
│ ├── running.png
│ ├── cycling.png
│ ├── swimming.png
│ └── default.png
└── Main.storyboard # UI layout

yaml
Copy code

---

## 🧮 How the App Works

### 1️⃣ User Input
- Activity Type  
- Duration (minutes)  
- Calories per Minute  

The **Calculate** button becomes active only when all fields contain valid data.

---

### 2️⃣ Calorie Calculation

totalCaloriesBurned = duration × caloriesPerMinute

yaml
Copy code

---

### 3️⃣ Navigation Logic

When the user taps **Calculate**, the app passes values to the result screen:

```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    destination.activityType = activityType
    destination.duration = duration
    destination.caloriesPerMinute = caloriesPerMinute
    destination.totalCaloriesBurned = totalCaloriesBurned
}
4️⃣ Result Screen Displays
Activity Type

Duration

Calories per Minute

Total Calories Burned

Plus:

🎨 Activity-specific image

✨ Smooth fade-in animation

🧩 Key Code Snippets
🔹 Text Field Validation
swift
Copy code
@objc func textFieldsDidChange() {
    let allFilled =
        !(ActivityOutlet.text?.isEmpty ?? true) &&
        !(DurationOutlet.text?.isEmpty ?? true) &&
        !(CaloriesPerMinuteOutlet.text?.isEmpty ?? true)

    calculateButton.isEnabled = allFilled
    calculateButton.alpha = allFilled ? 1.0 : 0.5
}
🔹 Fade-In Animation
swift
Copy code
imageView.alpha = 0.0
UIView.animate(withDuration: 1.5) {
    self.imageView.alpha = 1.0
}
🛠️ Requirements
Xcode 15+

iOS 15+

Swift 5+

UIKit + Storyboard

📦 How to Run
Clone the repository

Open FitnessTrackerApp.xcodeproj in Xcode

Run on a simulator or physical device

Enter your activity details → tap Calculate → view calories burned

👨‍💻 Author
Bhavesh Goswami
