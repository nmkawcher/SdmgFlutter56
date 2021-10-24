import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  final List dummyList = List.generate(
      100,
      (index) => {
            "id": index,
            "title": "This is Title $index",
            "subTitle": "This is SubTitle $index"
          });

  MyListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title text"),
      ),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.lightBlueAccent,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(dummyList[index]["id"].toString()),
                    backgroundColor: Colors.green,
                  ),
                  title: Text(
                    dummyList[index]["title"].toString(),
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  subtitle: Text(
                    dummyList[index]["subTitle"].toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )),
    );
  }
}
