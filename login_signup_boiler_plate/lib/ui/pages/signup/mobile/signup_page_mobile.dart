import 'package:flutter/material.dart';

class MobileSignup extends StatelessWidget {
  const MobileSignup({
    Key key,
    @required this.maxHeight,
    @required this.maxWidth,
  }) : super(key: key);

  final double maxHeight;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              'Signup'.toUpperCase(),
              style: Theme.of(context).textTheme.headline1,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColorLight,
                    ),
                    labelText: 'Name',
                    labelStyle: Theme.of(context).textTheme.headline3,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
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
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Theme.of(context).primaryColorLight,
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: Theme.of(context).textTheme.headline3,
                  ),
                  obscureText: true,
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                InkWell(
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
                      child: Text('Signup',
                          style: Theme.of(context).textTheme.headline2),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      width: maxWidth,
                      child: Text('Go back',
                          style: Theme.of(context).textTheme.headline2),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
