import 'package:flutter/material.dart';

import '../../../style_guide.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: azulEscuro),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          "Login",
          style: kStyleTitle.copyWith(color: azulEscuro),
        )
      ],
    );
  }
}
