// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:flutter/cupertino.dart';
import 'package:instagram_clone_gad/src/presentation/home.dart';
import 'package:instagram_clone_gad/src/presentation/signup/signup_page.dart';
import 'package:instagram_clone_gad/src/presentation/signup/username_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String signup = '/signup';
  static const String username = '/username';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) {
      return const Home();
    },
    signup: (BuildContext context) {
      return const SignupPage();
    },
    username: (BuildContext context) {
      return const UsernamePage();
    },
  };
}
