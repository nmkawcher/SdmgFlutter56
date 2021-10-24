import 'package:flutter/material.dart';

class SimpleListViewExample extends StatelessWidget {
  const SimpleListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple List View Example"),
      ),
      body: ListView(

        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.green
            ),
          ),
        ],
      ),
    );
  }
}
