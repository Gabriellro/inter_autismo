import 'package:flutter/material.dart';

import '../style_guide.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kStyleTitle.copyWith(color: preto),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'Ver mais',
              style: kStyleCaption.copyWith(color: azulClaro),
            ),
          ),
        ],
      ),
    );
  }
}
