import 'package:flutter/material.dart';
import 'package:spot_light/pages/second_page.dart';

import '../home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/p1.jpeg', // Ensure this path is correct
              fit: BoxFit.cover,
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
                      '📢 Unleash Your Talent, Shine Bright!',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(
                      width: 320,
                      height: 50,
                      child: Divider(
                        color: Colors.grey.shade200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                            fontSize: 30.0,
                            // fontFamily: 'DancingScript',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Spotlight!',
                          style: TextStyle(
                              color: Colors.pink,
                              fontSize: 30,
                              fontFamily: 'ReenieBeanie',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 20.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => HomePage(startAtPage: 3),
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
