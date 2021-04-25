import 'package:firststep/Firstpage.dart';
import 'package:firststep/Screens/Login_Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginUp extends StatelessWidget {
  bool _obsecureText=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Padding(
              padding: const EdgeInsets.only(top: 15,right: 299),
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
            child: Text('Login Up',style:
            TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
          ),
                SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration:InputDecoration(
                            labelText: 'FirstName',
                            hintText: "Your FirstName",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                            )
                        ),
                      ),
                SizedBox(height: 10,),
                TextField(
                  decoration:InputDecoration(
                      labelText: 'Lastname',
                      hintText: "Your Lastname",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      )
                  ),
                ),
                      SizedBox(height: 10,),
                      TextField(keyboardType: TextInputType.emailAddress,
                        decoration:InputDecoration(
                            labelText: 'Email',
                            hintText: "Your Email",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                            )
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(keyboardType: TextInputType.number,
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
                      SizedBox(height: 10,),
                      TextField(keyboardType: TextInputType.number,
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
                      SizedBox(height:9,),
                      Padding(
                        padding: const EdgeInsets.only(left:205.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18,
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: FloatingActionButton(onPressed: (){
                            Get.to(LoginPage());
                          },
                            child:
                            Icon(Icons.navigate_next,size: 50,),
                            backgroundColor: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ]
      ),
    ))
    );
  }
}
