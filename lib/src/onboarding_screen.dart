import 'package:flutter/material.dart';
import 'onboarding_step.dart';

class OnboardingScreen extends StatefulWidget {
  final List<OnboardingStep> steps;

  OnboardingScreen({required this.steps});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  void _nextPage() {
    if (_currentIndex < widget.steps.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // Handle onboarding completion
    }
  }

  void _skip() {
    // Handle skipping onboarding
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.steps.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return _buildStep(widget.steps[index]);
        },
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  Widget _buildStep(OnboardingStep step) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(step.backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(step.title, style: TextStyle(fontSize: 24, color: Colors.white)),
          SizedBox(height: 20),
          Text(step.description, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(onPressed: _skip, child: Text("Skip")),
          Text("${_currentIndex + 1} / ${widget.steps.length}"),
          ElevatedButton(onPressed: _nextPage, child: Text("Next")),
        ],
      ),
    );
  }
}