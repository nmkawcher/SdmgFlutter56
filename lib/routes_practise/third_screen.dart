import 'package:flutter/material.dart';
import 'package:sdmg_flutter56/routes_practise/fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text("go back"),
              onPressed: (){
               // Navigator.popUntil(context, ModalRoute.withName('/'));
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              child: Text("go forth page"),
              onPressed: (){
                // Navigator.popUntil(context, ModalRoute.withName('/'));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthScreen(value: "Come Form Third Screen",)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
