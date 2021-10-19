import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: HomePage()
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Stack Example"),
       ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.purple
                ),
              ),

             Positioned(
               bottom: -25,
               child: CircleAvatar(
                 radius: 30.0,
                 child:Container(
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.green
                   ),

                 )
               ),
             )
             /* Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green
                ),
              ),
              Positioned(
                bottom: 50,
                  left: 50,
                  child: Container(
                height: 300,
                width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.pinkAccent
                    ),
              )),
              Positioned(
                  bottom: 100,
                  left: 100,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.purple
                    ),
                  )),*/

            ],
          ),
          /*child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.purple,
              ),
              Container(
                height: 240,
                width: 240,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.cyanAccent,
              )
            ],
          ),*/
        ),
      ),
    );
  }
}




/*class MyContainer extends StatelessWidget {
  const MyContainer({Key? key,required this.__firstText}) : super(key: key);
String _firstText;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 10.0),
      height: 130,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.purple),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "First Text",
                style: TextStyle(color: Colors.white),
              ),
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.memory,
                    color: Colors.black,
                    size: 20,
                  ))
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "124bpm",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white,fontSize: 25),
            ),
          ),
          Container(
              padding: EdgeInsets.only(right: 8,top: 30),
              alignment: Alignment.bottomRight,
              child: Text("2")
          )
        ],
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "class 56",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("classwork 18"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               MyContainer(),
                SizedBox(
                  width: 15.0,
                ),
               MyContainer(),
                *//* Container(
                    height: 130 ,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                            Icon(Icons.favorite_border, color: Colors.white,)
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(8),
                          child: Text("124 bpm",
                            style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("80-120",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("Healthy",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),

                      ],
                    ),

                  ),*//*
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyContainer(),
                SizedBox(
                  width: 15.0,
                ),
                MyContainer()
                *//* Container(
                    height: 130 ,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                            Icon(Icons.favorite_border, color: Colors.white,)
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(8),
                          child: Text("124 bpm",
                            style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("80-120",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("Healthy",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),

                      ],
                    ),

                  ),*//*
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.lightBlue),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.indigoAccent),
                ),
                *//* Container(
                    height: 130 ,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                            Icon(Icons.favorite_border, color: Colors.white,)
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(8),
                          child: Text("124 bpm",
                            style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("80-120",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("Healthy",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),

                      ],
                    ),

                  ),*//*
              ],
            ),
            *//* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 130 ,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                            Icon(Icons.favorite_border, color: Colors.white,)
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(8),
                          child: Text("124 bpm",
                            style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("80-120",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("Healthy",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),

                      ],
                    ),

                  ),
                  Container(
                    height: 130 ,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                            Icon(Icons.favorite_border, color: Colors.white,)
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(8),
                          child: Text("124 bpm",
                            style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("80-120",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("Healthy",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),

                      ],
                    ),

                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 130 ,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                            Icon(Icons.favorite_border, color: Colors.white,)
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(8),
                          child: Text("124 bpm",
                            style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("80-120",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("Healthy",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),

                      ],
                    ),

                  ),
                  Container(
                    height: 130 ,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                            Icon(Icons.favorite_border, color: Colors.white,)
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(8),
                          child: Text("124 bpm",
                            style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("80-120",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(8),
                          child: Text("Healthy",
                              style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                        ),

                      ],
                    ),

                  ),
                ],
              ),*//*
            *//*Expanded(
                flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 130 ,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                                  Icon(Icons.favorite_border, color: Colors.white,)
                                ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Text("124 bpm",
                                style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("80-120",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("Healthy",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),

                          ],
                        ),

                      ),
                      Container(
                        height: 130 ,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                                  Icon(Icons.favorite_border, color: Colors.white,)
                                ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Text("124 bpm",
                                style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("80-120",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("Healthy",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),

                          ],
                        ),

                      ),
                    ],
                  )
              ),
              Expanded(
                flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 130 ,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                                  Icon(Icons.favorite_border, color: Colors.white,)
                                ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Text("124 bpm",
                                style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("80-120",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("Healthy",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),

                          ],
                        ),

                      ),
                      Container(
                        height: 130 ,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                                  Icon(Icons.favorite_border, color: Colors.white,)
                                ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Text("124 bpm",
                                style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("80-120",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("Healthy",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),

                          ],
                        ),

                      ),
                    ],
                  )
              ),
              Expanded(
                flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 130 ,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                                  Icon(Icons.favorite_border, color: Colors.white,)
                                ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Text("124 bpm",
                                style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("80-120",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("Healthy",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),

                          ],
                        ),

                      ),
                      Container(
                        height: 130 ,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("Heart Rate", style: TextStyle( color: Colors.white,), ),
                                  Icon(Icons.favorite_border, color: Colors.white,)
                                ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Text("124 bpm",
                                style: TextStyle( fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("80-120",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(8),
                              child: Text("Healthy",
                                  style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal)),
                            ),

                          ],
                        ),

                      ),
                    ],
                  )
              ),*//*
          ],
        ),
      ),
    );
  }
}*/

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter image demo",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar Title"),
        ),
        body: Column(
          children: [
            Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFRUYGBgYGhgYGhgaGRoYGhkYGBgZGRgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1HCQ7QDs0Py40NTEBDAwMEA8QHBISHjQhISQ0NDQxNDQ0NDQ0NDQ0NDQxNDQ0NDQ0MTQ0MTE0NDQ0NDE0NDQ0NDQ0NDQ0NDE0PzQ0NP/AABEIAL0BCwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAQIDBQYAB//EAD8QAAEDAgMEBggEBQQDAQAAAAEAAhEDIQQSMQVBUWEicYGRobEGEzJCUsHR8BRykuEVYoLS8RZDssIjU6Iz/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAKBEAAgICAgICAQMFAAAAAAAAAAECERIhAxMxQQRRIhRSwUJhYoGh/9oADAMBAAIRAxEAPwDzGnLTfrvPHgrLAtzznubAb48wgmM39InWJgyZiwCMwFUsdGWJ36XFt/3dbQ0yqLakIPZebf4RAuh8O9ryZAB3mZ0tA3Kxp05HL5Lpj/YKB8qRwRZpqN1NUAPCWFMKSa5iQURkJjlMWpPVoCgN4TMpRjqSZ6tS7CgXIU4NKIiEhKQURNlLlXOKSUrCjiAkXFIEWOhc0JzKxG5NldCVgFsxXFSiq1AtCnYEZFBTA0p5ws3C6gydytsDhi4gH761Lki0ivGzjZObheK1lPZDnNyjNIIMgWI4KCtsYgHN0JMX8I4qFyKymkZipRGllEaLVcVsEGmEM6gFonYnGisNALvwyPNNNLVaiJggw4ThRCIISZVWKFZEKYXerUuVLlRQWYSg9zndEADe4zrxgyRqp8HGYySSbZgCNLWg37bap1fDEEBvtG4AykhovrqDyTX1coyggcYIOl78DqVzLRmXmBY0+y3QxJBJmPdntndKOFYAwZtb/KrsESGtMiIBAMNMka5Qfu6mxFRrTm1kX/Na3MaLeMqQNBr8S0HLv+/mngSss/aJlpEkxIB4ggi0ckcNqFoDdTmALt380HjMD/ITXIvYi7LE000C/aEOF7aG/KforPOLHirTTGQ+qXFiIhNKKAgyJHU+SnlK0pDoBfTUTmK09XKjfQClodFU6mmFisn4YqPJyUtBQAWroCmqQoCpYULATgEwKQFAD2gKdjQoGu5J7XpFFphWBanY1FriG5rkgbt5WMw1S60WzsWGFrm6tIPcQVElZaej0/C0WsaGt7+KG2zhWPpkuHsgkJdn4oPBgyBlcPyuHR8AD2oT0gxeRsTctdbrLQPEFZUc6vIyOOy8D3qqqgIys4oR4ldcI6N5MFcE2FOaaT1CsnyQAhOhTimuyJhQM8KHI5H5EnqkDo86pVHOa5wIE6w0Q09W7Xnqo3uynjpLjPkRNpv2oKlUcwhwOum+3NEurl5BbJNyZ3cue5cadoxssxVaGAyZIgyBDjwNpk6KerWLnlzrdAwM1wLiXWtYeWqqcMyRJMgAkSSI4xGqOwxLnTJm5sTJkwCTyu5WmPyJVpFuVpkOAA0kDVxLerKBfUpjgAcxOjgBxsWzbdw7Co9p1iXhgs7MQQLmZaRbnojBRGZu9st9mILgD0BfcGgdaL2KiZjQYcOFybRnMBw1IFu2Ufh8TBJcYaIay4j7Mqtc+S7OC6DmPSLW9ECG25g8zbimPqB8FxhrZIt0nvNzIOl5VqVAaxgJCRwPBA7PxoDANSTGoPdxVvlWylaLSBCeSQP5FF5ApG0xwSKBW1AkeCdEUcKCnsw0JMEVT8O7iovwzlfin1JzaXUk4j0Zw4R3BN/BngtV6scE0saNyMQ0Zf8ACngl/CngtG9zeAQ1RzUqHSKb8NC4UwrE0wU1uFk2SxAEY2EZh64lE/w4kKI7PDdSk4iRJiNs1abm5Kpa0tLRlkGAcxBI3S4x1qPZ21n1Hue+o58NDYcSTMktMnQDpd5Qu2aLPVEjVlx3gHwUXo21hpz7xcZPIaDxPescamMuji53J7bpRhwbgFL6p26y6UDQuVdlStY7eU8UzxVWKiPIuyKcMTsiLCgbIuyInIuyJWOjxTNmyzBgctJkrqJM9HUgjsMWJ0UbRO/ip8I0gn8pOk9H3rflmy415MAtrejHCWnkQJiN2sdiK2aB6t7pgZZmCdBBvFuOu9RYqllOaIF2mBYWExJtG/qUdMZaTTPtuDd9rw4jdpI7VVUwsTDU8zmF5hrgXFx16IbN924f5Vvi8SGZS0w27WCYdZzZtFgXReNxi4CptmPdnLmszEaO3N1Ennp4qWnlLwwugCS982NxEaReCTbeheATCxSJa0Nl2YmbGAdQBvLjG+8aaiXVYAcxtzAG4ZeBgE3SOxrLkMAicoFpbvLpO+ZJN9BrqBXxhI3AOmeJBdO60DcnpDs0OCotyF3CATI1sAwTuk/d4uMJtFrg1uriYMXA4lYVu0HDSRe17j8vDrVjgNtFhGYAzxG6Z/e6uM0NSN21qkaxZupt4jQhRv2xUPvx1LXJFZI1oYlhYl+03/G7vULsc/43fqKMhZI3hcAoKmOY3eFhXYhx1ce8qM1OaMws2FbbQ92EDX2w86LOesT21EsmLIsamNed5URxL+JUDK6lbUadYSsB4xL+JT2Yx43lRgs4pYbuISAJZtGp8RS/jXk3cUIWH7ISsYUWOyfH1MzHgk+yT2i48l3o3jWsYejJLjPcIQ2JnI78rvJA7HqdAj+Y+QU/1Dy2bqnthhEEkdkoqjimG+dvbZYsPRNKoVWVFqVmx/Fs3Fp7Uw4w8G/qlZktJ3nxUtKm3fUI7UZFUaRmJnW3YpW1Ad6pKApC5e93aVa4bFM0bbrKWRSiieeAJS5j8JUrHjmew+afm5HuRkOkeClt/uynoPuRxaRrx1UTm3Vjsem05yTcM6A4vJsPJYLycdElJ7niTfMW84kgTHh3oHEvjogaE24XiI4q2OH9TmY72g9uVoF3ScwtE9KIEbwQgMZh3esbcAvh8i4bOhtwEdypvQNEOGa4ZmtcRFyWm9rG3bqh3OJvJvbu0nsCPYwNcZOW0Gd1puTrdpvzQTGSJ1I3des+CQCNdH7eS5z5Ijz5pxaZIsTffomASbdVkhD3EDr7+pPpxqT99iibf6qSnRJsOoc/v5osYSyoRAkRa0G57ro9jDxJUuBwRJvfQDLDuAmTrqtNhtjU9C8g7wWQe6VrFmkYNmVyFL6krc0diUd73H+mEYPR6mR0b87lOyulnnJoOTfUlehP9FJ0Pghqvoo/3XN7ii0LqZhfVngmlruC9Bo+j4Z/+gaeZdHgur4TDAWaCf5R84SDpPPgClzFbFmx2PNgRygT4lFU/RRpuGPPawIBcTMHmKdmK29f0aA/23jmXN+SBq7AYPa9Z/SyfGU7DqkjMCsU8Ypy0P8AC8MNTVB5sA+aExOz6PuOPaITFg0VL8S4gjkUFsisWtdHEeX7K2qYMDQqp2NTzF4/L/2Ut/kiGnZZtxx3gHsRNPah+AdyibgupPGG6lRoskF08WXb3DqCOo4IuuJ7ZVQKLxoQO1Pbi6zNKpHapKUq8mgbserEgSisHgK41hvYFlH7cr7657/oon7ZqHWs49pRTH2RPRG0KkQX9y78Id9U9686btB+55/Ufqu/FHe4FOmPtX0ZZrpc0diL2dW9WXPtYFsW4tJCr2a9QTg+BqbrBM5rL7bGKa+u1zXGC1rQ4byJ48CY03FD1XMOIdLnBmVw6JBJLpkNJ3Ekniqp9SQBe2776k5/tHKZ4EdV02wyJsWNHTOsXJnLMO00N0uHxTWtc3KC4tIBuSDOYO7PIIWo4n5dScx5gAbr7vuEgvZMbOOZggD2eegJMc55qGdIHHtlOa85SN0RE7zP+VEDedUAKJUjKkdaZuSIANZintOYE5tZmdD4fsrvAbdryB6xw58tTdZpnX4q2wdIiDbSbgWlVF7Ki2X79sVjrVce1cza1Qf7j/1FDvovjQdkBQOwr+PiFtoq5Fs3b1Qe+7vP1T6W2nuMFziFVU8K7f5o7DdEiI8FLKTkXwDnMzFjo4gjyVFi6rJPSeOVvqt9Q9JcOMIWOy58hGTLOZxkB8xHPsXn2PqMLiSe4BRFt+QcmyFtZg0e8d31UtPGt31KnZ+7lXOqN3DyXet5LUlSL1m1gz2PWnm55jub9UZh/ShzfacB+VknvcSsw0k6DxKNp4Y6keal0aRlL0WtbbweZy5jxcyfAGEFX2i924djGj5KI5Rp80ucD3h+kpWU7flgb855dip9jg53gEA/RxC0NUg6eQCzmzXxWeCNc+/SHTbjopb2jKSpovmNf8YKmFQN1nvCHaJ0zd30Ur5AuO8JtmiGVMc0bx3oR+Kad7fFEyPgaf6UgI+Bv6QiyWm/YBkad7T2EpH0IvlPd+6tmPO5o/SEU0OeMoa0n8oHihyBcaZmnGNx8E31nJX+K2TlEvdTaTuzZj3Aqu/Cs+MfoKalZL42jMOEE8/mE+BvmwEd957FPh8NmeG9q0G3dgsw9Njy9ri9rSMjtLgkkEDUO71g2ZqNoybglYYlK/kuYyfJOxDnkkAkzuA4AJaNQsMiO0T5pHNSBqLA4PMEAwCQSNxiYtyldmPhCaG3SIEPJXZlxC5rUwHsfG5W2z8WwEZmPcfzTPDWwVUxh4EjqPbdWOAouzCzt14cY4GyLNIJ3o11F7Mg6F/LrKgfUHwFTtwxa27w382YeYUuDwedzWtewucQ0DNqSYAvbvV5JI6GmQ4bCPqSGMcYEmA53g0FV9WGmC6OS0jalXAucKdWk1xfTY9pLSYL2g2mJE69ar6mwXPJLX0yTe1Rh+aS5FeyXxyfhFC6tFRl/df5t+pXVHSZVjW9G3irTbLJeHx0gfZDSbhWVP0Qd71Ro7z8ku6C9gvjcr9GaFP7lPDBw8Vpx6JcKre+PkpWeiQ+Mf8A0fIBLvh9lL43J9Gbw7T8fgEQ8E7wr13ou7cWHnLh8ims9HX8GfrP9qT5oP2aLgkvRnyw8/FIJ7fFa6h6PM98Cf5ah8iz5qV+waYiGyN8vI7gG38Fm/kxRa+NJmNfVOpNhc66b1mMDWa2uHuPRzOk8jNz3heibd2JR9U8MBaS0w4uJ0vEE74jtXmA1Tjyqe16Of5HG+OUbNpVcSbRHXHkFZbO2E+oM1mt4mfAEXVtsfCsYxgDQSGtGYgFxgayrn14AuQBzIHmuefyn4R6EPi6ykVNPYNFg/8AI8Txc7KO4geaEqbAe6TSrsy7ssHxA+atKm0cMD0n0iex3iAYTqe0MPqKrOov8gSs+2a3srqg9aMriPRrEzch3PO0eahd6MV92V3IPH7LZt2jSJkPYI3Z2+QcnjG3n1jI4W883yVfqpr1/wAI/S8b3/Jj2eidfeGt/qJ/4ypv9I1fjZ3u/tWkxe2qdPWXcmQ75oL/AFPT+B/6W/3IXPyy2kJ8HFHTPMdn0C6sxkwXtF4LtRm9kXNl1Rr3gNAJJdlAAOsaBN2VVc2sxwIkOAk6C0CbiB2hJh8W9sOYS1zX5wRqDGo7117s8m/xA8RRLSWuBBEyDrIROzMSKb2PLA/K4Oyu0Mbio8XVc9znvJLnSSTqSdSUj6RytdxMajcJNtd4Wig5J0vBF09hG0MUKtV7wwMDiSGt0HUrXYtPCmk81XkPDZYAJl0ix4LONUlFskDNBJAvYAHeTuUrjcmkvLHklthmCwBq1WsZq5wAkgb+O5QY/CGm9zDEtJBggiQdxGqjLsjj0tJEg68weCY583KvBxlixZJrQwhK2ZCssbUo5A1jTmBu4xcRyMak7tB1oAQtOXjjFpRdkqTflUTNqOBBa4giL6X+wrLB7arDomo4CZkW3GZiLXQOAqta45mgghw6rG4vqNV2NxYfUzhjWgkdEC0aLV8XF15Xv6CPLNSqtGzwOzjUGZtYnnkJnnIcrI0X0mvoh1N4eWf+TI9zmkDMQ0gW4HqWAw+1Ie1wYGiSC2n0ZaTJF9LwJ4WV7T9J3ZgRTMZnG0GxDgLxGpC8+Xbeto9OE/jyX5a/kIr7MeabXmowyaWuYHpPZcy3n5pz9kVRoWO/K4uJ7AFVYnbjjh8sOuKXSkDpsLZEa+74K0/1I83yDSxJBmUJ8v0hr9M/LaK/GNqMq0WulpdmgQ6bjKLRe5Asi34at8Lz/Q/5tVZtLaWetSc8Boa46QZBLYMRyVgNtuGjABewIB3xcNidNy0WX0ZLrt/k69EUvHHuKezEPGhcOqygftaoTOVp65Kc7aLi0dGHTc6gjkIEb+Kv/RncV4kwg42rpnf3lPZiaw0c8f1EfNCs2m8ARmHGCB3Wt2yu/i2Ij23d/ck0/wBqKU17kywG0cQP9w/rbPeSo34qs/V5PW9o/wCyGO03xBzHrfHk1Nfj3W6At/OTPXIhLH/FDfIv3MV9J3vX/rafIlZFxWofiHG8BvE5ievdCyr9UNP2Yckl6NjTxLAATNwP9wt3cAkftCnoGgHjmqO8zCAw7A5jTLdALE7gpvVW1b4o6/dGnbKh42gzr/Unfj2EeyG/r+qQAzOZs6+z8phM/Dj4h3fuqwYs2SnHMGj3fod9Sm/jmnVzv0pHYdp1dPYE91FpjM4mNNLdVkdYdjOp7UDfZe8dRc1P/jr/AP21P1H6prcMzn/8/wBqd6lnPw+iOpD7JfZj21iNCpaVUxMxe/h8k+nhW7z4IoUGNBGY8dw8VFmFMCebG6laARe5tuJ/ZJXyR0Zn75JWVRAtdO2IjeL27o5Ln1JDWwARviJkzdSvYXGYEnmPJRmhvIntQm1sGhKLw11zPVf5hI6TNpmToU5tNo1HZMqUVdwEDknbChhpON4y8ZsD92T6LIMwCbiIkXBHzlJmThUQGhW0b6G8pXYcC8d5XNf9wnFzidYCq9BSOwzOl7NhDZBHtEgQe8J2JwBaHPaCWCOkIDmyQBmA7piFGyh0s2a8zpvVnTxDho8ixG64OoI3jkVDbKST8lQ17ycrHl07nx2DpEgogYiowQWMHGWwRoJsRxHJEYjZrXtLqeUPGtMWzD4mX15KrFRw6Jm247uw6IUhNUOrYpjzL2OB4tdw5EfNGYfHsFi94EACWNtHMOQFOmw+04t5xI7d6K/hvQc4EOFy0sOYzGhGqMqFsObXY7Sq3tD2+YjxUzKbj7Ja78rmu8AVSVsIQzNItEg2c2bGQVFUoubqI3ibSOXFVmFs0LqDxq1w6wR8kwA8VSUa7xdj3DqcQif4rXmC/Nv6Qa6R/UEZDtFoGFPDCqwbWfvYw9hH/FwTW7Tfy7lWSHaJtp4rKCyLuGukX8dFTGFYYhwqEOL2h0RlMtjtDYOqGdg3bgHdTmnwmVEm2yZBGzcbkOXLIcRv03WWhDD9lZMU3NM5HCOIIRf8Xqj3u8fVOMqWxxdGkFM/ZThSKqdkY973ODiDAkWA3q5aVonZapjPVFKKR4FT5krXclRVA4YeCdkPBFhyXMEBRkWPjRJUfPNDeuTHVSucyyJnRvhMOXhKiLl0oFY8RuACUpkrpQFkghdCZKUJgPsnABRSnBAEohPsoQU4OQMlSxzTGlOlIDsp3OKkc3PZ5vufv7SmApwKQwLE4V7DDhbcdyiZULTLSQeIMLR4HEMIyVQCw2DjfL18vLyrtrbIdS6Tekw6Hh1/VKxOPtAxxpcIeA4cbB3epG1xGVrraZXdSrwUhKYkwzD02gZXgzPtA+EJmKpADM10weEG6YyqRv7E71jTYiPJMeiZrTAcWmCJBF+/ghnIyk8tAym3gg3G57UMAZ5uUhcRoU6pqmFIkkZiXjRx71OMe/eZ67+aCCfCYWWOF2g8OlrWzoSGt0kamNJjVHt21UBh1MTOX2SDPCx1VVs32wJuQQ2dMx0DuLTp2q1DQdxPRzAe85gMOZPxsOhTTZUWyVnpA0+0zud9QiaW2aR+Idk+UqvfTEOzdIQHOI95h9mszg4aOG9AY7BFhMXiCY0LT7LhyOkbjyITyZWUkaunj6R0e3tIB7ip/WN+JveFjMDSa/oFxa/3TPRcfhIiyf8Ah2iznva4agMBAPIzdPNjzf0DwuASwlhSZ0JC6E6F0IAaAlTgEuVADAnQnAJYQA0JwSwuAQM4J0Lg1KWoA6EoC4BckAoShyRcgCSURhcU1sh7GvadbdIdR+R8EHfiuclQ7DsdspjxnoER8O7q/lKoqlMtMOEFWNCu5hlpjiNx5Eb0Q97Kohwh3D+0pITSZShcp8RhS02uPFDymIeHQulNlcCgCN7STZMyHgppTg9AgfIeCkDCiWPadbeSn9QCJHgmNIGoNcDIaCYjq3gjmj/4hBJc0tOdrxvAJAa8TwIk9ajpNI3E96I9a3QjsMf4TRSQ5mKYLtcCGPloNi6m+MzYOsE6cgpKzMoc0CTS6TR8VJ+reYiR/SEK/Csdo2OogfNNbhnsJLHwYiDw4TvRYbAMbQyOseiYc0/ym4PX9FbUNrjKMwMxdV+MY/K1rmiGCzhwO4/4VfmRdCtoOXJAFyBChPASNCUJDFC6ErV0oAUBKAkBSoAclATN64G6AH2SlImk3QA+VwKYF0IAfKSU2V03QApTSUpKYSgBSU0rnJEAEMxO51+f1UVeiDcR1hRFc2oQgCB7CNUwFG1AhKjUhDUqRq4pALKeyoW3BIUYSIAsKeP+MTzGvjZF06jHey4dROU9wF1SrkxqRdeq4T1NGXvlIXlupB5DXyVW3GuGpLhwJKPpOLhrAO4JjTskrmWGQRIO6RyuLKihWxblBgm+t9UGaYQJn//Z"),

            Image(
              height: 60.0,
              width: 60.0,
              image: AssetImage("assets/images/well_come.png"),
            ),
            CircleAvatar(

              backgroundImage: NetworkImage(
                  "data:image/jpeg;base64,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"),

            )
          ],
        ),
      ),
    );
  }
}*/

/*class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count=0;
  void _incremntCount(){
   setState(() {
     _count++;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             "click",style:TextStyle(fontSize: 20)
           ),
           Text("$_count")
         ],
       ),
     ),

     floatingActionButton: FloatingActionButton(
       onPressed: (){
         _incremntCount();
         },
       child: Icon(Icons.add),

     ),
    );

  }
}*/

/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'material title',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count=0;//2
  void _incrmentCount(){
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click",style: TextStyle(color: Colors.black,fontSize: 20),),
            Text("$_count",style: TextStyle(color: Colors.black,fontSize: 30),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){_incrmentCount();},
        child: Icon(Icons.add),
      ),
    );

  }
}*/

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
