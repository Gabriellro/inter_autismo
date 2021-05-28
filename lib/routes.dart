import 'package:flutter/material.dart';
import 'package:inter_autismo/screens/home/home_screen.dart';

import 'screens/sign_in/sing_in_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // .routeName: (context) => (),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
