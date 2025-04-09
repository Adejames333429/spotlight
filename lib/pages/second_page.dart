import 'package:flutter/material.dart';

import '../home_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/p2.jpeg', // Ensure this path is correct
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 60), // Adjust padding to avoid AppBar
            child: Column(
              children: [
                // Add the row with the back button and skip button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back Arrow Button
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new,
                            color: Colors.black54),
                        onPressed: () {
                          Navigator.pop(
                              context); // Go back to the previous page
                        },
                      ),
                      // Skip Button
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                  startAtPage: 6), // Skip to desired page
                            ),
                          );
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0, // 100 pixels from the bottom
            child: Container(
              width: 100,
              height: 255,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 39.0),
                child: Column(
                  children: [
                    Text(
                      '🏆 Join Talent Competitions & Win Big!',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(
                      width: 320,
                      height: 40,
                      child: Divider(
                        color: Colors.grey.shade200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Showcase Your',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Skills,',
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'Compete And Get Recognized',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 12.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(startAtPage: 4),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
