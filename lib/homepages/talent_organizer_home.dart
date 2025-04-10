import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/talent_button.dart';

class TalentOrganizerHome extends StatefulWidget {
  const TalentOrganizerHome({super.key});

  @override
  State<TalentOrganizerHome> createState() => _TalentOrganizerHomeState();
}

class _TalentOrganizerHomeState extends State<TalentOrganizerHome> {
  int _currentIndex = 0;

  final List<String> imgList = [
    'images/homeimage.png',
    'images/p1.jpeg',
    'images/p4.jpeg ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          'Spotlight',
          style: TextStyle(
            fontFamily: 'ReenieBeanie',
            fontSize: 32,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: Icon(Icons.notification_add_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'images/emoji.png',
                  width: 20,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Trending Competitions',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            CarouselSlider(
              items: imgList.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                          alignment: Alignment(0, 0.27),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mazi Got Talent Show',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Inter',
                                height: 1.4,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '10 Million Naira Cash Prize',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 10.0),
                                  minimumSize: Size(0, 0),
                                  // 👈 removes default min width & height
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              onPressed: () {},
                              child: Text('Join Now'),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 170.0,
                viewportFraction: 1.0,
                initialPage: 0,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => setState(() {
                    _currentIndex = entry.key;
                  }),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? Colors.black54
                          : Colors.grey.shade400,
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                Image.asset(
                  'images/cup.png',
                  width: 20,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Top Talents',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TalentButton(
                    title: 'Music',
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  TalentButton(
                    title: 'Art',
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                  ),
                  TalentButton(
                    title: 'Dance',
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                  ),
                  TalentButton(
                    title: 'Fashion',
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
