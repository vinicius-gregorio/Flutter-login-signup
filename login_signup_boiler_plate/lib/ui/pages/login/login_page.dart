import 'package:flutter/material.dart';

import 'mobile/login_page_mobile.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      final maxWidth = constraints.maxWidth;
      final maxHeight = constraints.maxHeight;
      return Scaffold(
        body: MobileLogin(maxHeight: maxHeight, maxWidth: maxWidth),
      );
    });
  }
}
