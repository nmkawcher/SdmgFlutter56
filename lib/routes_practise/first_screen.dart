import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmg_flutter56/routes_practise/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
         Navigator.push(context,
         MaterialPageRoute(builder: (context)=>SecondScreen()));
          },
          child: Text("Go To Second Screen"),

        ),
      ),
    );
  }
}
