import 'package:flutter/material.dart';
import 'package:inter_autismo/componnenst/default_button.dart';
import 'package:inter_autismo/componnenst/form_error.dart';
import 'package:inter_autismo/screens/home/home_screen.dart';

import '../../../style_guide.dart';

enum SingingCharacter { microempreendedor, consultor }

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  SingingCharacter _character = SingingCharacter.microempreendedor;
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  // ignore: non_constant_identifier_names
  late String conform_password;
  bool remember = false;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: 10),
            buildPasswordFormField(),
            SizedBox(height: 10),
            buildConformPassFormField(),
            FormError(errors: errors),
            SizedBox(height: 20),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Row buildRadioTip() {
    return Row(
      children: [
        Radio(
          value: SingingCharacter.microempreendedor,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value!;
            });
          },
        ),
        Text("Microempreendedor"),
        Radio(
          value: SingingCharacter.consultor,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value!;
            });
          },
        ),
        Text("Consultor")
      ],
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == conform_password) {
          removeError(error: kMatchPassError);
        }
        conform_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_rounded, color: azulEscuro),
        hintText: "Confirme a sua senha",
        hintStyle: kStyleSubTitle.copyWith(
          color: azulEscuro.withOpacity(0.20),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        fillColor: preto.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_rounded, color: azulEscuro),
        hintText: "Digite a sua senha",
        hintStyle: kStyleSubTitle.copyWith(
          color: azulEscuro.withOpacity(0.20),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        fillColor: preto.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_rounded, color: azulEscuro),
        hintText: "Digite o seu email",
        hintStyle: kStyleSubTitle.copyWith(
          color: azulEscuro.withOpacity(0.20),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        fillColor: preto.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
