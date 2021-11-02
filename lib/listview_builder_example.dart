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
      body: Container(
        child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                shrinkWrap: true,
                itemBuilder: (context, index) => Card(
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                              ),
                            ),
                            Positioned(
                              left: 10,
                                top: 10,
                                child: Icon(Icons.favorite))
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
      ),
      /*  body: ListView.builder(

          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
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
              )),*/
    );
  }
}
