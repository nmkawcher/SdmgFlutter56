import 'package:flutter/material.dart';
import 'package:sdmg_flutter56/routes_practise/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text("Go Back"),
              onPressed: (){
Navigator.pop(context);
              },
            ),
            SizedBox(height: 10,),
            OutlinedButton(
              child: Text("Go Next"),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>
                ThirdScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
