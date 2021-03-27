import 'package:flutter/material.dart';

import 'mobile/signup_page_mobile.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      final maxWidth = constraints.maxWidth;
      final maxHeight = constraints.maxHeight;
      return Scaffold(
        body: MobileSignup(maxHeight: maxHeight, maxWidth: maxWidth),
      );
    });
  }
}
