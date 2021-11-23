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
    Album obj = Album.fromV(element);
    albums.add(obj);
  });
  return albums;
}
class Album{
final int userId;
final int id;
final String title;
  Album({this.userId,this.id,this.title});

  factory Album.fromMap(Map<String,dynamic>value){
    int uid=value['userId'];
    int id=value['id'];
    String title=value['title'];
    Album o=Album(uid,id,title);

    return o;

}

}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({required this.userId, required this.id, required this.title});

  factory Album.fromV(Map<String, dynamic> mMap) {
/*    int mUserId=mMap['userId'];
    int mId=mMap['id'];
    String mTitle=mMap['title'];
    Album obj=Album(userId:mUserId ,title:mTitle, id: mId);*//*
    return Album(userId: mMap['userId'], id: mMap['id'], title: mMap['title']);
  }
}*/

class ApiExample extends StatefulWidget {
  static final String routesName = '/api_example';

  const ApiExample({Key? key}) : super(key: key);

  @override
  _ApiExampleState createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Example"),
      ),

    );
  }
}
