import 'package:flutter/material.dart';
import 'package:four_find_me/constants.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReusableAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kThemeColor,
      shape: CustomShapeBorder(),
      title: Image.asset('images/logo.png',scale: 10.0,color: Colors.white,),
      leading: IconButton(icon: Icon(Icons.menu), onPressed: () {  },),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.settings), onPressed: () {  },)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2, rect.height + 60, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();
    return path;
  }
}