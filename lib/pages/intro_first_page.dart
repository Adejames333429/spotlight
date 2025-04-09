import 'package:flutter/material.dart';

class IntroFirstPage extends StatelessWidget {
  const IntroFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Text('Ready to Shine!'),
          )),
        ],
      ),
    );
  }
}
