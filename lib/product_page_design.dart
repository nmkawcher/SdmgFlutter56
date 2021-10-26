import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDesignPage extends StatelessWidget {
  const ProductDesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appbar"),
      ),
      body: Card(
        color: Colors.indigo,
        margin: EdgeInsets.all(10),
        child: Container(
          height: 120,
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child:  Image.network("data:image/jpeg;base64,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"),

              ),
               SizedBox(width: 10,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Classic Black T-shirt",style: TextStyle(
                       fontSize: 25
                     ),),
                     Text("Rs.570",style: TextStyle(
                         fontSize: 20
                     ),),
                     Row(
                       children: [
                         Container(
                           height: 30,
                           width: 30,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(color: Colors.black,width: 1),

                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(4.0),
                             child: Text(
                               "1",textAlign: TextAlign.center,
                             ),
                           ),

                         ),
                         SizedBox(width: 10,),
                         ClipOval(
                           child: Container(
                             height: 30,
                             width: 30,
                             color: Colors.blue,
                           ),
                         )
                       ],
                     )
                   ],
               ),
              Spacer(),
              Column(
                children: [
                  Text("2x"),
                  SizedBox(height: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever),color: Colors.red,)
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
