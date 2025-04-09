import 'package:flutter/material.dart';

class IntroSecondPage extends StatelessWidget {
  const IntroSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Spotlight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 100.0,
                  fontFamily: 'ReenieBeanie',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Text(
              'Join Spotlight today and start your journey to fame!',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
