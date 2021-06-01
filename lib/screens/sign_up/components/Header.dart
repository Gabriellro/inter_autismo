import 'package:flutter/material.dart';

import '../../../style_guide.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 56,
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios_rounded, color: azulEscuro),
            Text(
              "Entrar",
              style: kStyleTitle.copyWith(color: azulEscuro),
            )
          ],
        ),
      ),
    );
  }
}
