import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {@required this.colour, @required this.title, @required this.onPress});

  final Color colour;
  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: GoogleFonts.courgette(
              fontWeight: FontWeight.w700,
              textStyle: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
