import 'package:flutter/material.dart';
import 'package:sdmg_flutter56/name_routes/page_two.dart';

class PageOne extends StatelessWidget {
 static final String routesName='/page_one';
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Appbar Title"),
     ),
     body: SizedBox(
      width: double.infinity,
       child: Column(
         children: [
          Container(
           height: 100,
           child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
              Container(
               height: 80,
               width: 100,
               color: Colors.red,
               margin:EdgeInsets.all(5),
              ),
              Container(
               height: 80,
               width: 100,
               color: Colors.red,
               margin:EdgeInsets.all(5),
              ),
              Container(
               height: 80,
               width: 100,
               color: Colors.red,
               margin:EdgeInsets.all(5),
              ),
              Container(
               height: 80,
               width: 100,
               color: Colors.red,
               margin:EdgeInsets.all(5),
              ),
              Container(
               height: 80,
               width: 100,
               color: Colors.red,
               margin:EdgeInsets.all(5),
              ),
              Container(
               height: 80,
               width: 100,
               color: Colors.red,
               margin:EdgeInsets.all(5),
              ),
              Container(
               height: 80,
               width: 100,
               color: Colors.red,
               margin:EdgeInsets.all(5),
              ),

             ],
            ),
           ),
          ),
           OutlinedButton(
            onPressed: (){
             Navigator.pushNamed(context, PageTwo.routesName);
            },
            child: Text("Go to Second Page"),
           ),
         ],
       ),
     ),
    );
  }
}
