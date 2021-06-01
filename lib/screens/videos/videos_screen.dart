import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/bottom_nav_bar.dart';
import 'package:inter_autismo/style_guide.dart';

import 'components/body.dart';

class VideosScreen extends StatefulWidget {
  static String routeName = "/Videos";

  @override
  _VideosScreenState createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  // ignore: unused_field
  int _selectedItem = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        iconList: [
          Icons.explore_rounded,
          Icons.forum_rounded,
          Icons.video_library_rounded,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 2,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.search_rounded,
          size: 28,
        ),
        onPressed: () => Navigator.pushNamed(context, VideosScreen.routeName),
        backgroundColor: azulEscuro,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
