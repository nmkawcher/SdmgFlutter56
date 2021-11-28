import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> getAlbums() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
  final map = jsonDecode(response.body);
  print(map.toString());
  List<Album> albums = [];
  map.forEach((element) {
    Album obj = Album.fromMap(element);
    albums.add(obj);
  });
  return albums;
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({required this.userId, required this.id, required this.title});

  factory Album.fromMap(Map<String, dynamic> value) {
    int uid = value['userId'];
    int id = value['id'];
    String title = value['title'];
    Album o = Album(userId: uid, id: id, title: title);

    return o;
  }
}

class HttpExample extends StatefulWidget {
  const HttpExample({Key? key}) : super(key: key);

  @override
  _HttpExampleState createState() => _HttpExampleState();
}

class _HttpExampleState extends State<HttpExample> {
  late Future<List<Album>> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = getAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<List<Album>>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Album>? list = snapshot.data;
              return ListView.builder(
                  itemCount: list!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          list[index].title,
                        ),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
