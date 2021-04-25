import 'package:flutter/material.dart';
import 'package:firststep/Firstpage.dart';
import 'package:get/get.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DemoApp',
      theme: ThemeData(
        primaryColor: Colors.black,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),

        ),
      ),
      home: Firstpage(),
    );
  }
}

