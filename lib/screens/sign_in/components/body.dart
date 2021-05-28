import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/social_card.dart';
import 'package:inter_autismo/screens/home/home_screen.dart';

import 'Header.dart';
import 'package:inter_autismo/style_guide.dart';
import 'sign_form.controller.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 30),
            Image.asset(
              "assets/images/Faixa.png",
              height: 150,
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Inter",
                    style: kStyleDisplay.copyWith(color: amarelo),
                  ),
                  TextSpan(
                    text: "Autismo",
                    style: kStyleDisplay.copyWith(color: azulEscuro),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            SignFormController(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: Icons.facebook_rounded,
                  press: HomeScreen.routeName,
                ),
                SocialCard(
                  icon: Icons.facebook_rounded,
                  press: HomeScreen.routeName,
                ),
                SocialCard(
                  icon: Icons.facebook_rounded,
                  press: HomeScreen.routeName,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Não tem uma conta? ",
                  style: kStyleSubTitle.copyWith(color: preto),
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                  child: Text(
                    "Inscrever-se",
                    style: kStyleSubTitle.copyWith(
                      color: azulEscuro,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
