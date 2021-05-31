import 'package:flutter/material.dart';

import '../../../style_guide.dart';
import 'Header.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Header(),
              SizedBox(height: 150),
              SignUpForm(),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Ao clicar em continuar, você confirma que \n",
                      style: kStyleCaption.copyWith(
                        color: preto,
                      ),
                    ),
                    TextSpan(
                      text: ' concorda com nosso ',
                      style: kStyleCaption.copyWith(
                        color: preto,
                      ),
                    ),
                    TextSpan(
                      text: 'Termo e Condição',
                      style: kStyleCaption.copyWith(
                        color: azulClaro,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
