import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiService{

  Future<List<Album>>getData()async {
   final r=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));

   if(r.statusCode==200){
     //ok
     final map=jsonDecode(r.body);
     List<Album>list=[];

     map.forEach((element){

     Album album=  Album.fromMap(element);
     list.add(album);
     });
return list;
   }
   else{
     //error
     throw 'no data found';
   }




  }

}

class Album{
  final int userId;
  final int id;
 final  String title;
  Album({required this.userId,required this.id,required this.title});


 factory Album.fromMap(Map<String,dynamic>m) {

    int mUid=m['userId'];
    int mId=m['id'];
    String mTitle=m['title'];

    Album obj=Album( userId: mUid, id: mId, title: mTitle);
    return obj;
  }
  /*factory Album.fromMap(Map<String,dynamic>m) {

    int mUid=m['userId'];
    int mId=m['id'];
    String mTitle=m['title'];

    Album obj=Album( userId: mUid, id: mId, title: mTitle);
    return obj;
  }*/
}

