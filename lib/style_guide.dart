import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: branco,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// Cores //
const amarelo = Color(0xFFFBB91A);
const azulEscuro = Color(0xFF0E2F72);
const azul = Color(0xFF124193);
const azulClaro = Color(0xFF0073BC);
const preto = Color(0xFF000000);
const preto50 = Color(0xab000000);
const branco = Color(0xFFFFFFFF);
const branco2 = Color(0xFFFF1F1F1);

// Estilos de caracteres
const kStyleDisplay = TextStyle(
  fontFamily: 'Quicksand',
  letterSpacing: 0.3,
  fontSize: 30,
  fontWeight: FontWeight.w700,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(1.0, 2.0),
      blurRadius: 3.0,
      color: preto50,
    ),
  ],
);

const kStyleTitle = TextStyle(
  fontFamily: 'Quicksand',
  letterSpacing: 0.3,
  fontSize: 18,
  fontWeight: FontWeight.w700,
);
const kStyleTitle2 = TextStyle(
  fontFamily: 'Quicksand',
  letterSpacing: 0.3,
  fontSize: 22,
  fontWeight: FontWeight.w700,
);

const kStyleSubTitle = TextStyle(
  fontFamily: 'Quicksand',
  fontSize: 16,
  fontWeight: FontWeight.w700,
  height: 1.5,
);

const kStyleCaption = TextStyle(
  fontFamily: 'Quicksand',
  letterSpacing: 0.3,
  fontSize: 14,
  fontWeight: FontWeight.w700,
);

const kStyleDate = TextStyle(
  fontFamily: 'Quicksand',
  letterSpacing: 0.3,
  fontSize: 12,
  fontWeight: FontWeight.w700,
);

// animações
const kAnimationDuration = Duration(milliseconds: 200);

const defaultDuration = Duration(milliseconds: 250);

const double kNDefaultPadding = 24.0;
const double kBDefaultPadding = 16.0;

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Digite o seu e-mail";
const String kInvalidEmailError = "Digite um e-mail válido";
const String kPassNullError = "Por favor, insira sua senha";
const String kShortPassError = "A senha é muito curta";
const String kMatchPassError = "As senhas não coincidem";
