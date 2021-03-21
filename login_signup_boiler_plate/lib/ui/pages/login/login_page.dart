import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      final maxWidth = constraints.maxWidth;
      final maxHeight = constraints.maxHeight;
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  height: maxHeight * 0.3,
                  width: maxWidth,
                  color: Colors.red,
                  child: Image(
                    image: AssetImage('lib/ui/assets/logo/logo.png'),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Text(
                  'Login'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline1,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    TextFormField(),
                  ],
                ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
