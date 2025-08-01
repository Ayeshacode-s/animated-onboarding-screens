animated_onboarding_screens
A highly customizable and animated onboarding screen for Flutter.

Replace this with a GIF or image of your package in action.

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

import 'package:animated_onboarding_screens/animated_onboarding_screens.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
final hasSeen = await AnimatedOnboardingScreens.hasSeenOnboarding();

runApp(MyApp(hasSeen: hasSeen));
}

Then, use the AnimatedOnboardingScreens widget, providing a list of OnboardingPage objects and a callback function for when the user finishes.

import 'package:flutter/material.dart';
import 'package:animated_onboarding_screens/animated_onboarding_screens.dart';

class OnboardingDemo extends StatelessWidget {
const OnboardingDemo({Key? key}) : super(key: key);

void _onFinish(BuildContext context) {
// Navigate to your main app screen
Navigator.of(context).pushReplacement(
MaterialPageRoute(builder: (context) => const MainScreen()),
);
}

@override
Widget build(BuildContext context) {
final List<OnboardingPage> onboardingPages = [
OnboardingPage(
header: const Icon(Icons.flash_on, size: 100, color: Colors.blue),
body: const Text('Welcome to our App! Discover amazing features.'),
),
OnboardingPage(
header: const Icon(Icons.group, size: 100, color: Colors.green),
body: const Text('Connect with friends and share your moments.'),
),
OnboardingPage(
header: const Icon(Icons.star, size: 100, color: Colors.amber),
body: const Text('Get started now and unlock your potential.'),
),
];

    return AnimatedOnboardingScreens(
      pages: onboardingPages,
      onFinish: () => _onFinish(context),
      // Set to false if you want the screen to always show
      showOnboardOnce: true, 
    );
}
}

🎨 Customization
The AnimatedOnboardingScreens widget is highly customizable. You can override the default buttons with your own widgets:

AnimatedOnboardingScreens(
pages: onboardingPages,
onFinish: () => _onFinish(context),
skipButton: TextButton(
onPressed: () => _onFinish(context),
child: const Text('Skip This'),
),
finishButton: ElevatedButton(
onPressed: () => _onFinish(context),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.purple,
),
child: const Text('Let\'s Go!'),
),
);

🤝 Contributing
Contributions are welcome! If you have a feature request, bug report, or want to contribute code, please check out the issue tracker.

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.