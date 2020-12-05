import 'package:flutter/material.dart';
import 'package:four_find_me/components/rounded_button.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Hero(
                    tag: 'logo',
                    child: Container(
                      height: 100.0,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  SizedBox(height: 18.0,),
                  TextField(
                    onChanged: (value) {},
                    decoration: kInputDecoration.copyWith(hintText: 'Username'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    onChanged: (value) {},
                    decoration: kInputDecoration.copyWith(hintText: 'Password'),
                  ),
                ],
              ),
              RoundedButton(
                colour: kThemeColor,
                title: 'Login',
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
