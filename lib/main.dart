
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:navigation_bar_curve/pages/page_one.dart';
import 'package:navigation_bar_curve/pages/page_three.dart';
import 'package:navigation_bar_curve/pages/page_two.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;

  List<Widget> _pageOpcion=[
    PageOne(),
    PageTwo(),
    PageThree(),
  ];


  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 10,
              shadowColor: Colors.white,
              title: Center(child: Text('Curved Navigation Bar', style: TextStyle(color: Colors.blueGrey))),
            ),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 50.0,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.line_style, size: 30),
              Icon(Icons.account_circle,size: 30),
              
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.transparent,
            backgroundColor:  Color.fromRGBO(66 , 229, 152, 1),
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
          body: Container(
            child: _pageOpcion[_page],
          ),
          )
    );
  }
}

