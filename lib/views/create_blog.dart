import 'package:flutter/material.dart';
class CreateBlog extends StatefulWidget {
  @override
  _CreateBlogState createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  String username, title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text("HowkMii",style:
              TextStyle(
                fontSize: 22

              ),
            ),
            Text("Blog",style:
              TextStyle(
                fontSize: 22,
                color: Colors.blue

              ),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.file_upload))
        ],
        

      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: <Widget>[
        SizedBox(height: 10,),
        Container(
          height: 100, 
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
          width: MediaQuery.of(context).size.width,
        child: Icon(Icons.add_a_photo, color: Colors.black54, ),
        
        ),

        SizedBox(height: 8,),
        TextField()


      ],),),
      
    );
  }
}