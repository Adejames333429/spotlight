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
    'images/homeimage.png',
    'images/homeimage.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 0.0,
          ), // Adjust this value to shift more to the left
          child: IconButton(
            icon:
                Icon(Icons.menu, color: Colors.black), // Change color if needed
            onPressed: () {},
          ),
        ),
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
            padding: const EdgeInsets.only(right: 14.0),
            child: Icon(Icons.notification_add_outlined),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0, top: 20.0),
            child: Row(
              children: [
                Image.asset('images/emoji.png', width: 20),
                SizedBox(width: 10.0),
                Text('Trending Competitions', style: TextStyle(fontSize: 17)),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CarouselSlider(
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
                        padding: const EdgeInsets.all(15.0),
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
                            SizedBox(height: 4.0),
                            Text(
                              '10 Million Naira Cash Prize',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                              ),
                            ),
                            SizedBox(height: 8.0),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10.0),
                                minimumSize: Size(0, 0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
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
          ),
          SizedBox(height: 10),
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
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset('images/cup.png', width: 20),
                SizedBox(width: 10.0),
                Text('Top Talents', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 25),
          // ⬇️ This is the scrollable part only
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ListView(
                      children: [
                        Container(
                          height: 375,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/m1.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment(0, -0.9),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 7.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                child: Icon(
                                                  Icons.music_note,
                                                  size: 12,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 7.0,
                                              ),
                                              Text(
                                                'Music',
                                                style:
                                                    TextStyle(fontSize: 12.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors
                                                    .white, // border color
                                                width: 2.0, // border width
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              radius: 16.0,
                                              backgroundImage:
                                                  AssetImage('images/girl.jpg'),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            'Bisola Adegoke',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Icon(
                                            Icons.verified,
                                            color: Color(0xffFDD835),
                                            size: 13.0,
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                'Follow',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text(
                                        'New music Free-style',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '#Talent',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '#Business',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '#Artiste',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width:
                                                40, // Adjust based on how many avatars and overlap
                                            height:
                                                32, // Avatar diameter (2 * radius)
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 5,
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_two.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10,
                                                  top: 5, // overlapping offset
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_three.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 20,
                                                  top: 5,
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_four.jpg'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '22k View | 3Days',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '66k',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.mode_comment_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '22k',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'images/Vector.png',
                                            width: 20,
                                          ),
                                          Text(
                                            '1k ',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.bookmark,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '100',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          height: 375,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/m2.png'),
                              fit: BoxFit.cover,
                              alignment: Alignment(0, -0.9),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 7.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                child: Icon(
                                                  Icons.music_note,
                                                  size: 12,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 7.0,
                                              ),
                                              Text(
                                                'Music',
                                                style:
                                                    TextStyle(fontSize: 12.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors
                                                    .white, // border color
                                                width: 2.0, // border width
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              radius: 16.0,
                                              backgroundImage:
                                                  AssetImage('images/guy.png'),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            'Ashsha Danladi',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Icon(
                                            Icons.verified,
                                            color: Color(0xffFDD835),
                                            size: 13.0,
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                'Follow',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text(
                                        'New music Free-style',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '#Talent',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '#Business',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '#Artiste',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width:
                                                40, // Adjust based on how many avatars and overlap
                                            height:
                                                32, // Avatar diameter (2 * radius)
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 5,
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_two.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10,
                                                  top: 5, // overlapping offset
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_three.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 20,
                                                  top: 5,
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_four.jpg'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '22k View | 3Days',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '10k',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.mode_comment_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '1k',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'images/Vector.png',
                                            width: 20,
                                          ),
                                          Text(
                                            '5k',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.bookmark,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '400',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          height: 375,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/m3.png'),
                              fit: BoxFit.cover,
                              alignment: Alignment(0, -0.9),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 7.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                child: Icon(
                                                  Icons.music_note,
                                                  size: 12,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 7.0,
                                              ),
                                              Text(
                                                'Music',
                                                style:
                                                    TextStyle(fontSize: 12.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors
                                                    .white, // border color
                                                width: 2.0, // border width
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              radius: 16.0,
                                              backgroundImage: AssetImage(
                                                  'images/guy_two.png'),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            'Chinedu Okafor',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Icon(
                                            Icons.verified,
                                            color: Color(0xffFDD835),
                                            size: 13.0,
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 2,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15.0,
                                                      vertical: 2.0),
                                              child: Text(
                                                'Follow',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text(
                                        'New music Free-style',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '#Talent',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '#Business',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '#Artiste',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width:
                                                40, // Adjust based on how many avatars and overlap
                                            height:
                                                32, // Avatar diameter (2 * radius)
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 5,
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_two.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 10,
                                                  top: 5, // overlapping offset
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_three.jpg'),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 20,
                                                  top: 5,
                                                  child: CircleAvatar(
                                                    radius: 10.0,
                                                    backgroundImage: AssetImage(
                                                        'images/girl_four.jpg'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '7k View | 5Days',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '11k',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.mode_comment_outlined,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '17k',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'images/Vector.png',
                                            width: 20,
                                          ),
                                          Text(
                                            '300',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.bookmark,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '200',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //     width: double.infinity,
                //     child: BottomNavigationBar(
                //       backgroundColor: Color(
                //           0xff212121), // don't override with default white
                //       elevation: 0, // no shadow
                //       type: BottomNavigationBarType.fixed,
                //       // currentIndex: _selectedIndex,
                //       // onTap: _onItemTapped,
                //       selectedItemColor: Color(0xffEA1E61),
                //       unselectedItemColor: Colors.white,
                //       items: const [
                //         BottomNavigationBarItem(
                //           icon: Icon(Icons.home),
                //           label: 'Home',
                //         ),
                //         BottomNavigationBarItem(
                //           icon: Icon(Icons.add_box_outlined),
                //           label: 'Create',
                //         ),
                //         BottomNavigationBarItem(
                //           icon: Icon(Icons.inbox_outlined),
                //           label: 'Inbox',
                //         ),
                //         BottomNavigationBarItem(
                //           icon: Icon(Icons.person_2_outlined),
                //           label: 'Profile',
                //         ),
                //         BottomNavigationBarItem(
                //           icon: Icon(Icons.menu),
                //           label: 'Menu',
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
