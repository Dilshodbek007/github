
import 'package:get/get.dart';
import 'package:firststep/Screens/Login_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' Choose Account Type',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            SizedBox(height: 30,),
            Center(
              child: Column(
                children: [
                  Container(width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.greenAccent,
                        width: 2,
                      ),),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                        onPressed: (){
                          Get.to(LoginPage());
                        }, child: Column(
                      children: [
                        Image.asset('images/bemor.png',),
                        Text('Patient')
                      ],
                    )),
                  ),
                  SizedBox(height: 25,),
                  Container(width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.greenAccent,
                        width: 2,
                      ),),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                        onPressed: (){
                          Get.to(LoginPage());
                        }, child: Column(
                      children: [
                        Image.asset('images/doctor.png'),
                        Text('Doctor')
                      ],
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
