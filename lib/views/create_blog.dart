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
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text("HowkMii ",style:
              TextStyle(
                fontSize: 22,
                color: Colors.black

              ),
            ),
            Text("Blog",style:
              TextStyle(
                fontSize: 22,
                color: Colors.black45

              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.file_upload, color: Colors.black45,))
        ],
        

      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: <Widget>[
        SizedBox(height: 60,),
        Container(
          height: 100, 
          decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(15),border: Border.all(),),
          width: MediaQuery.of(context).size.width,

        child: Icon(Icons.add_a_photo, color: Colors.blueGrey, ),
        
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: <Widget>[
          
          SizedBox(height: 50,),
          TextField(
          decoration: InputDecoration(hintText: "Author",),
          onChanged: (val){
            username =val;
            
          },
        ),
        TextField(
          decoration: InputDecoration(hintText: "Title"),
          onChanged: (val){
            title =val;
          },
        ),
        TextField(
          decoration: InputDecoration(hintText: "Content"),
          onChanged: (val){
            content =val;
          },
        ),
        ],),)


      ],),),
      
    );
  }
}