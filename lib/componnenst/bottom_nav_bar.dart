import 'package:flutter/material.dart';
import 'package:inter_autismo/screens/blog/blog_screen.dart';
import 'package:inter_autismo/screens/home/home_screen.dart';
import 'package:inter_autismo/screens/videos/videos_screen.dart';

import 'package:inter_autismo/style_guide.dart';

class BottomNavBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  BottomNavBar({
    this.defaultSelectedIndex = 0,
    required this.iconList,
    required this.onChange,
  });

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
          index == 0
              ? Navigator.pushNamed(context, HomeScreen.routeName)
              : index == 1
                  ? Navigator.pushNamed(context, BlogScreen.routeName)
                  : Navigator.pushNamed(context, VideosScreen.routeName);
        });
      },
      child: Container(
        height: 46,
        width: MediaQuery.of(context).size.width / _iconList.length - 25,
        child: Icon(
          icon,
          color: index == _selectedIndex
              ? azulEscuro
              : azulEscuro.withOpacity(0.20),
        ),
      ),
    );
  }
}
