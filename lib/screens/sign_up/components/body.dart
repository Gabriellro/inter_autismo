import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Header(),
              ),
              SizedBox(height: 30),
              Container(
                width: 250,
                height: 250,
                child: SvgPicture.asset("assets/images/pacto.svg"),
              ),
              SizedBox(height: 30),
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
