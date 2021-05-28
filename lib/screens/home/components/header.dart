import 'package:flutter/material.dart';

import '../../../style_guide.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (24)),
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'InterAutismo',
                style: kStyleDisplay,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none_rounded,
                color: amarelo,
              ),
              onPressed: () {},
            ),
            CircleAvatar(
              radius: 14,
              backgroundColor: azulEscuro,
            )
          ],
        ),
      ),
    );
  }
}
