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
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 30),
                  height: maxHeight * 0.3,
                  width: maxWidth,
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('lib/ui/assets/logo/logo.png'),
                    ),
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
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Theme.of(context).primaryColorLight,
                        ),
                        labelText: 'E-mail',
                        labelStyle: Theme.of(context).textTheme.headline3,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Theme.of(context).primaryColorLight,
                        ),
                        labelText: 'Password',
                        labelStyle: Theme.of(context).textTheme.headline3,
                      ),
                      obscureText: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: Text('Forgot my password')),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    GestureDetector(
                      onTap: () {
                        print('tapped dumbass');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorLight),
                          width: maxWidth,
                          child: Text('Entrar',
                              style: Theme.of(context).textTheme.headline2),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    GestureDetector(
                      onTap: () {
                        print('tapped dumbass');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                          width: maxWidth,
                          child: Text('Cadastrar',
                              style: Theme.of(context).textTheme.headline2),
                        ),
                      ),
                    )
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
