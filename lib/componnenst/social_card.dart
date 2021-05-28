import 'package:flutter/material.dart';
import 'package:inter_autismo/style_guide.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final String press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, press);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        height: (40),
        width: (40),
        decoration: BoxDecoration(
          color: azulClaro,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: branco,
        ),
      ),
    );
  }
}
