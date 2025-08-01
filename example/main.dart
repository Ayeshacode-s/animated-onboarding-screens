import 'package:animated_onboarding_screens/animated_onboarding_screens.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingDemo(),
    );
  }
}

class OnboardingDemo extends StatelessWidget {
  final List<OnboardingStep> steps = [
    OnboardingStep(
      title: "Welcome",
      description: "This is the first step of onboarding.",
      backgroundImage: "assets/one.jpg",
    ),
    OnboardingStep(
      title: "Discover",
      description: "Learn more about the features.",
      backgroundImage: "assets/two.jpg",
    ),
    OnboardingStep(
      title: "Get Started",
      description: "Let's get started with the app!",
      backgroundImage: "assets/three.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return OnboardingScreen(steps: steps);
  }
}