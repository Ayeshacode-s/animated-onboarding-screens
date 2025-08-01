Animated_onboarding_screens
A highly customizable and animated onboarding screen for Flutter.

<img width="4000" height="3077" alt="1" src="https://github.com/user-attachments/assets/68ac4ee0-e5e0-45b5-8d7c-615d81c0d93b" />

<img width="4000" height="3077" alt="2" src="https://github.com/user-attachments/assets/42e1376e-7add-4990-b6f0-f2dc7f47a5cb" />

<img width="4000" height="3077" alt="3" src="https://github.com/user-attachments/assets/3da38590-2536-4c35-8d58-88b605db2fa2" />


✨ Features

Parallax Effects: Background and foreground content move at different speeds.

Hero Animations: Easily create beautiful Hero transitions between pages.

Customizable UI: Full control over page content, buttons, colors, and text styles.

Built-in Persistence: An optional feature to show the onboarding screen only once per user.

Developer-Friendly API: Simple and intuitive to get started in minutes.

🚀 Getting Started
1. Add the dependency
   Add animated_onboarding_screens to your pubspec.yaml file:

dependencies:
animated_onboarding_screens: ^0.1.0

2. Install it
   Run flutter pub get in your terminal.

💻 Usage
First, check if the user has already seen the onboarding screen using the static helper method. This is typically done at the start of your app.

Then, use the AnimatedOnboardingScreens widget, providing a list of OnboardingPage objects and a callback function for when the user finishes.


🎨 Customization
The AnimatedOnboardingScreens widget is highly customizable. You can override the default buttons with your own widgets:


🤝 Contributing
Contributions are welcome! If you have a feature request, bug report, or want to contribute code, please check out the issue tracker.

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.
