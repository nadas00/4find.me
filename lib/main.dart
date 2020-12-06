import 'package:flutter/material.dart';
import 'package:four_find_me/screens/friends_screen.dart';
import 'package:four_find_me/screens/login_screen.dart';
import 'package:four_find_me/screens/profile_screen.dart';
import 'package:four_find_me/screens/register_screen.dart';
import 'package:four_find_me/screens/welcome_screen.dart';

void main() {
  runApp(FindMe());
}

class FindMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FriendsScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegisterScreen.id : (context) => RegisterScreen(),
        ProfileScreen.id : (context) => ProfileScreen(),
        FriendsScreen.id: (context) => FriendsScreen(),
      },
    );
  }
}
