import 'package:flutter/material.dart';
import 'package:four_find_me/components/reusable_app_bar.dart';
import 'package:four_find_me/components/rounded_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ReusableAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'qR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: kThemeColor,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      backgroundColor: Color(0xFFedeff2),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(

                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0,bottom: 10.0),
                  child: Column(
                    children: [
                      Flexible(
                        child: CircleAvatar(
                          child: CircleAvatar(
                            child: Icon(
                              Icons.person,
                              size: 45.0,

                              color: kThemeColor.withAlpha(90),
                            ),
                            radius: 47.0,
                            backgroundColor: Colors.white,
                          ),
                          radius: 49.0,
                          backgroundColor: kThemeColor,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'hasan çiftçi',
                        style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.w500,
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '23 -',
                            style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                          Text(
                            'Yazılım müh.',
                            style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.w300,
                              textStyle: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: kProfileBoxDecoration,
                margin: EdgeInsets.only(
                    top: 40.0, bottom: 1.0, right: 5.0, left: 5.0),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        //outer invisible block
                        margin: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5.0),
                        height: 80.0,
                        child: Stack(
                          //inside upper block
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            Container(
                              // inside under block
                              height: 68,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: kThemeColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 0,
                                      offset: Offset(0, 10),
                                      // changes position of shadow
                                    ),
                                  ]),
                              child: Container(
                                // alta alınmış bloklardan öndeki - sola kaymış
                                margin: EdgeInsets.only(right:2.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(22)),
                              ),
                            ),
                            Positioned(
                              // 4f logo
                              top: 34,
                              right: 25,
                              child: Container(
                                child: Image.asset(
                                  'images/logo.png',
                                  color: kThemeColor,
                                  scale: 15,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 68,
                                width: size.width - 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30.0,
                                        vertical: 2.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: kThemeColor.withAlpha(50),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(22.0),
                                              bottomRight:
                                                  Radius.circular(22.0))),
                                      child: Text(
                                        'Facebook',
                                        style: GoogleFonts.raleway(textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                        ),)
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 3.0),
                                      child: Text(
                                        '/hasanc',
                                        style: GoogleFonts.raleway(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                margin: EdgeInsets.only(right: 5.0, left: 5.0),
                decoration: BoxDecoration(
                  color: kThemeColor.withAlpha(50),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
