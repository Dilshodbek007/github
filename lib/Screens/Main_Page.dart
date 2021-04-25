import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellow
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Hello Donald,',style:
                        TextStyle(fontSize: 25),),
                      Text('Are you  OK?',style:
                      TextStyle(fontSize: 25),),
                      SizedBox(height: 6,),
                      TextField(
                        decoration: InputDecoration(prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
                          filled: true,
                          fillColor: Colors.white,
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categories',style: TextStyle(
                fontSize: 30,
                color: Colors.black
              ),),
            ),
            SizedBox(height: 10,),
            Container(color: Colors.white,
              height: 200,
              child: ListView(scrollDirection: Axis.horizontal,
                children:<Widget> [
                  listlar(Colors.green,AssetImage('images/doctor.png')),
                  listlar(Colors.red,AssetImage('images/doctor.png')),
                  listlar(Colors.teal,AssetImage('images/doctor.png'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget listlar(rangi,rasmi){
  return Padding(
    padding: const EdgeInsets.only(right:8.0,left: 8),
    child: Container(width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: rangi,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: rasmi,
          )
      ),
    ),
  );
}