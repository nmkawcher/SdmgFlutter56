import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Appbar Title"),
        title: showText("Appbar Title"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              buildClipRRect(),
              SizedBox(
                height: 15,
              ),
              buildRow(),
              NewWidget(),
              Align(
                alignment: Alignment.topLeft,
                child: Text("About"),
                /*  child: Text("About",style: TextStyle(
                  color: Colors.black,fontSize: 30
                ),),*/
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow() {
    return Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.pinkAccent),
                    child: Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "300",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.lightBlue),
                    child: Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "300",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.greenAccent),
                    child: Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "300",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
  }

  ClipRRect buildClipRRect() {
    return ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                height: 200,
                width: 200,
              ),
            );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}

Widget showText(String text) {
  //text="About"
  return Text(text); //Text("About")
}
