# Flag Guessing Game — iOS (Swift)
A lightweight, fast, and fun flag quiz game for iPhone and iPad. You’re shown a **country name** and three **random flags**; tap the flag that matches the country to score points. Perfect for quick geography practice and friendly competition.

## Features
- **Three-choice gameplay**: One country name, three random flags, one correct answer.
- **Rounds & scoring**: Earn points for correct answers.
- **Clean, minimal UI**: Fast to play, easy to extend.
- **No internet required**: All country names and flag images are stored in the app.
  
**Planned / In Progress**
- Polishing the app design (layout, colors, animations).
- Adding more flags and validating data (names, codes, aliases).
- Building the streaks boost the score.
- Adding subtle feedback on correct/incorrect choices - Haptic & sound feedback.

## 📸 Screenshots
<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-14 at 15 28 31" src="https://github.com/user-attachments/assets/f2692ef3-46ff-419c-9deb-dcbf3cd0a881" />

## 🛠️ Tech Stack
- **Language**: Swift
- **Target**: iOS
- **Architecture**: Simple MVVM-style separation
- **Assets**: Flag images (PNG/JPG)
- **UI**: SwiftUI

## 📁 Project Structure
Flag-Guessing-Game/
├── flag_guessing_game/                # Main iOS App
│   ├── flag_guessing_game/
│   │   ├── Assets.xcassets/           # Flag images, app icons, colors
│   │   ├── ContentView.swift          # Main quiz UI
│   │   ├── flag_guessing_gameApp.swift# App entry point
│   │   ├── Info.plist                 # App configuration
│   │   └── Preview Content/           # Xcode preview assets
│   ├── flag_guessing_game.xcodeproj   # Xcode project file
│   ├── flag_guessing_gameTests/       # Unit tests
│   └── flag_guessing_gameUITests/     # UI tests
├── flags/                             # Extra flag images (unused in build yet)
│   ├── Argentina.jpg
│   ├── Austria.jpg
│   ├── Brazil.jpg
│   └── ...
└── README.md

## 🚀 Getting Started
### Prerequisites
- Xcode 15+ (recommended)
- iOS 15+ simulator or device

### Build & Run
1. Clone the repository:
```bash
git clone https://github.com/heeyeonyune/Flag-Guessing-Game.git
cd Flag-Guessing-Game
```
2. Open the project in Xcode (.xcodeproj or .xcworkspace).
3. Select an iOS Simulator (or a connected device).
4. Run the program (⌘R).

### 📬 Contact
Author: Heeyeon Yoon — <heeyeon.yune@gmail.com>
GitHub: @heeyeonyune
