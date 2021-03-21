import 'package:flutter/material.dart';
import 'package:login_signup_boiler_plate/ui/pages/login/login_page.dart';
import 'package:login_signup_boiler_plate/ui/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: appTheme(),
      home: LoginPage(),
    );
  }
}
