import 'package:flutter/material.dart';
import 'package:inter_autismo/style_guide.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(azulEscuro),
          foregroundColor: MaterialStateProperty.all(azulClaro),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: kStyleTitle.copyWith(color: branco),
        ),
      ),
    );
  }
}
