import 'package:firststep/Screens/Account_Page.dart';
import 'package:firststep/Screens/DoctorList.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firststep/Screens/Main_Page.dart';



class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}
class _BottomBarState extends State<BottomBar> {
  int sahifaraqami=0;
  final _sahifa=[MainPage(),DoctorPage(),AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,
        leading: Icon(Icons.menu,color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/bemor.png'),
              radius: 25,
            ),
          )
        ],
      ),
      body: _sahifa[sahifaraqami],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home,title: 'Home'),
          TabItem(icon: Icons.home,title: 'Home'),
          TabItem(icon: Icons.home,title: 'Home'),
        ],
        initialActiveIndex: sahifaraqami,
        onTap:(int i){
          setState(() {
            sahifaraqami=i;
          });
        },
        activeColor: Colors.black,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
