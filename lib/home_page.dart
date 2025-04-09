import 'package:flutter/material.dart';

import 'package:spot_light/pages/ThirdPage.dart';
import 'package:spot_light/pages/first_page.dart';
import 'package:spot_light/pages/intro_first_page.dart';
import 'package:spot_light/pages/intro_second_page.dart';
import 'package:spot_light/pages/second_page.dart';
import 'package:spot_light/pages/fourth_page.dart';
import 'package:spot_light/pages/fifth_page.dart';

class HomePage extends StatefulWidget {
  final int startAtPage;
  const HomePage({super.key, this.startAtPage = 0});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    // Initial page based on widget parameter
    _currentPage = widget.startAtPage;

    // Schedule the jumpToPage() after the first frame has been drawn
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_pageController.hasClients) {
        // Now it's safe to call jumpToPage after the PageView is attached
        _pageController.jumpToPage(_currentPage);
      }
    });

    // Add a 2-second delay before transitioning to the second screen
    Future.delayed(Duration(seconds: 2), () {
      if (_currentPage == 0) {
        _pageController.animateToPage(
          1, // Go to the second intro page
          duration: Duration(seconds: 1), // Transition duration
          curve: Curves.easeInOut,
        );
      }
    });

    // Transition from IntroSecondPage -> FirstPage after another 2 seconds
    Future.delayed(Duration(seconds: 4), () {
      if (_currentPage == 1) {
        _pageController.animateToPage(
          2, // Go to the first page with indicator
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    });

    // Listen to page changes and update currentPage
    _pageController.addListener(() {
      int newPage = _pageController.page!.round();
      if (newPage != _currentPage) {
        setState(() {
          _currentPage = newPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // Indicator builder function
  Widget _buildTopIndicator() {
    int indicatorPage =
        _currentPage - 2; // Shift index since first 2 pages don’t count
    const int totalIndicatorPages = 5;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          children: List.generate(totalIndicatorPages, (index) {
            return Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 4,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: index <= indicatorPage
                        ? Colors.black54
                        : Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              IntroFirstPage(), // Page 0 (No Indicator)
              IntroSecondPage(), // Page 1 (No Indicator)
              FirstPage(), // Page 2 (Indicator starts here)
              SecondPage(), // Page 3
              ThirdPage(), // Page 4
              FourthPage(), // Page 5
              FifthPage(), // Page 6
            ],
          ),

          // Show indicator only from page 2 onward
          if (_currentPage >= 2) _buildTopIndicator(),
        ],
      ),
    );
  }
}
