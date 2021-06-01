import 'package:flutter/material.dart';

import 'screens/blog/blog_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/sign_in/sing_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/videos/videos_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // .routeName: (context) => (),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  BlogScreen.routeName: (context) => BlogScreen(),
  VideosScreen.routeName: (context) => VideosScreen(),
};
