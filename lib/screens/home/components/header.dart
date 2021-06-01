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
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Inter",
                      style: kStyleTitle2.copyWith(
                        color: amarelo,
                      ),
                    ),
                    TextSpan(
                      text: "Down",
                      style: kStyleTitle2.copyWith(
                        color: azul,
                      ),
                    ),
                  ],
                ),
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
            ),
          ],
        ),
      ),
    );
  }
}
