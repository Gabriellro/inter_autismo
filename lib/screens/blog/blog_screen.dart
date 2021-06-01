import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/bottom_nav_bar.dart';
import 'package:inter_autismo/style_guide.dart';

import 'components/body.dart';

class BlogScreen extends StatefulWidget {
  static String routeName = "/Blog";

  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  // ignore: unused_field
  int _selectedItem = 1;

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
        defaultSelectedIndex: 1,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.search_rounded,
          size: 28,
        ),
        onPressed: () => Navigator.pushNamed(context, BlogScreen.routeName),
        backgroundColor: azulEscuro,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
