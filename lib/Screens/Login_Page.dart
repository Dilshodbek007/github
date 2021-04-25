import 'package:firststep/Firstpage.dart';
import 'package:firststep/Screens/Main_Page.dart';
import 'package:firststep/convexbottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'LoginUp_Page.dart';


// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  bool _obsecureText=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,right: 285),
                child: IconButton(onPressed: (){
                  Get.to(Firstpage());},
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const  EdgeInsets.only(right: 215,top: 16),
                child: Text('Login In',style:
                  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
              ),
              SizedBox(height: 130,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration:InputDecoration(
                    labelText: 'Email',
                    hintText: "Your Email",
                        hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8.0,),
                child: TextField(keyboardType: TextInputType.number,
                  obscureText: _obsecureText,
                  decoration:InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(onPressed: (){
                        _obsecureText=!_obsecureText;
                      },
                          icon: Icon(Icons.remove_red_eye_outlined)),
                      hintText: "Your Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                     )
                  ),
                ),
              ),
              TextButton(onPressed: (){},
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left:200.0),
                    child:
                    Text('Forgot your Password?',style:
                    TextStyle(fontSize: 14,color: Colors.red),
                        ),
                  )
              ),
              SizedBox(height:9,),
                Padding(
                  padding: const EdgeInsets.only(left:205.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: FloatingActionButton(onPressed: (){
                      Get.to(BottomBar());
                    },
                      child:
                      Icon(Icons.navigate_next,size: 50,color: Colors.black,),
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ),
              SizedBox(height: 20,),
              Text('Login with ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: deprecated_member_use
                  FlatButton(onPressed: () { },
                  child: CircleAvatar(radius: 20,
                    backgroundImage: AssetImage('images/google.png'),
                  )),
                  SizedBox(width: 15,),
                  // ignore: deprecated_member_use
                  FlatButton(onPressed: () { },
                      child: CircleAvatar(radius: 20,
                        backgroundImage: AssetImage('images/facebook.png'),
                      )),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('If you have\'t an account,'),
                  TextButton(onPressed: (){
                    Get.to(LoginUp());
                  },
                    child: Text(' Sign Up',style: TextStyle(fontSize: 16,
                        color: Colors.teal),
                    ),
                  ),
                ],
              ),
           ],
          ),
        ),
      ),
    );
  }
}
