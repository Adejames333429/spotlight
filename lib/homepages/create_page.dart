import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

String? selectedCategory;

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  String? selectedCategory;
  bool isCompetitionOnly = false;

  final List<String> categories = [
    'Music',
    'Art',
    'Launch',
    'Competition',
    'Game',
    'Sponsor',
  ];
  @override
  void initState() {
    super.initState();
    selectedCategory = categories[0]; // Show 'Music' by default
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 130.0),
              child: Text(
                'Media Upload Section',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'video or image Supported formats: .mp4, .mov, .jpg, png. Max file size limit (e.g., 100MB).',
              style: TextStyle(fontSize: 13, color: Color(0xFF212121)),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text(
                'If you experience any issues reach out to our support team.',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xff3B82F6),
                  fontSize: 13,
                  color: Color(0xff3B82F6),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            DottedBorder(
              color: Color(0xffD9D9D9),
              strokeWidth: 1,
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              dashPattern: [6, 3],
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xffF7FCFF),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.file_upload_outlined),
                    Text(
                      'Drag & Drop or Select from Device',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(
                                color: Color(0xffD9D9D9),
                              ))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 3.0,
                        ),
                        child: Text(
                          'Browse',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Video Caption',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: TextEditingController(),
              minLines: 4,
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'Enter your video caption',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(
                    12, 16, 12, 12), // Keeps hint at top-left
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Video Category',
              style: TextStyle(
                fontSize: 13.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            DropdownButtonFormField<String>(
              value: selectedCategory,
              items: categories.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value;
                });
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Privacy Settings',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Competition Only',
                  style: TextStyle(fontSize: 13.0),
                ),
                Transform.scale(
                  scale: 0.55,
                  child: Switch(
                    value: isCompetitionOnly,
                    onChanged: (value) {
                      setState(() {
                        isCompetitionOnly = value;
                      });
                    },
                    activeColor:
                        Colors.green, // Optional: customize the active color
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
              child: Text('Post'),
            ),
          ],
        ),
      ),
    );
  }
}
