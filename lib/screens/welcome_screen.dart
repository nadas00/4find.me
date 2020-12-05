import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:four_find_me/components/rounded_button.dart';
import 'package:four_find_me/constants.dart';
import 'package:four_find_me/screens/login_screen.dart';
import 'package:four_find_me/screens/register_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
              Center(
                child: Column(
                  children: [
                    Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset('images/logo.png'),
                        height: 45.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 15.0,),
                        RotateAnimatedTextKit(
                          text: ['For find me','You','and More..'],
                          textAlign: TextAlign.start,
                          textStyle: GoogleFonts.dancingScript(fontWeight:FontWeight.w500, textStyle: TextStyle(color: kThemeColor, fontSize: 45.0),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              RoundedButton(colour: kThemeColor, title: 'Register', onPress: (){
                Navigator.pushNamed(context, RegisterScreen.id);
              }),
              RoundedButton(colour: kThemeColor, title: 'Login', onPress: (){
                Navigator.pushNamed(context, LoginScreen.id);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
