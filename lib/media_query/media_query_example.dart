import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MediaQueryExample extends StatefulWidget {
  static final String routesName='/media_query_example';
  MediaQueryExample({Key? key}) : super(key: key);

  @override
  _MediaQueryExampleState createState() => _MediaQueryExampleState();
}

class _MediaQueryExampleState extends State<MediaQueryExample> {
  double width=0.0;

  double height=0.0;

  bool isPotrait=false;

  @override
  void initState() {

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown]
    );
    super.initState();
  }

  @override
  void dispose() {
   SystemChrome.setPreferredOrientations([
     DeviceOrientation.portraitDown,
     DeviceOrientation.portraitUp,
     DeviceOrientation.landscapeRight,
     DeviceOrientation.landscapeLeft,
   ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    MediaQuery.of(context).orientation==Orientation.portrait?isPotrait=true:isPotrait=false;

    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query Example"),
      ),
      body: Center(
        child: Column(
          children: [
            isPotrait?Container(
              margin: EdgeInsets.all(getScreenWidth(10)),
              height: height*.8,
              width: width*1,
              color: Colors.teal,
            ):Container(
              margin: EdgeInsets.all(getScreenWidth(10)),
              height: height*1,
              width: width*1,
              color: Colors.teal,
            )

          ],
        ),
      ),
    );
  }

  double getScreenWidth(double d){
    return (d/375.0)*width;
  }
}
