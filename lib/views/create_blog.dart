import 'dart:io';

import 'package:The_blog_app/services/crud.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class CreateBlog extends StatefulWidget {
  @override
  _CreateBlogState createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  String username, title, content;
  File selectedImage;
 
  CrudMethods crudMethods = new CrudMethods();
    Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      selectedImage = image;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      backgroundColor: Color(0xFF52575d),
      appBar:  AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text("HowkMii ",style:
              TextStyle(
                fontSize: 22,
                color: Color(0xFFfddb3a)

              ),
            ),
            Text("Blog",style:
              TextStyle(
                fontSize: 22,
                color: Colors.white

              ),
            )
          ],
        ),
        backgroundColor: Color(0xFF52575d),
        elevation: 0.0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.file_upload, color: Colors.white,))
        ],
        

      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: <Widget>[
        SizedBox(height: 80,),

        GestureDetector(
          onTap: (){
            getImage();
          },
          child: selectedImage != null ? Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Image.file(selectedImage),)
          : Container(
          height: 100, 
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15),border: Border.all(),),
          width: MediaQuery.of(context).size.width,

        child: Icon(Icons.add_a_photo, color: Colors.blueGrey, ),
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),

          
          child: Column(children: <Widget>[
          
          SizedBox(height: 60,),
          TextField(
          decoration: InputDecoration(
            hintText: "Author",
            hintStyle:
              TextStyle(
                fontSize: 16,
                color: Color(0xFFf6f4e6),
              ),
              

            ),
          
          
          
          onChanged: (val){
            username =val;
            
            
          },
        ),
        SizedBox(height: 20,),
        TextField(
          
          
          decoration: InputDecoration(
            hintText: "Title",
            hintStyle:
              TextStyle(
                fontSize: 16,
                color: Color(0xFFf6f4e6),
              ),
  
          
 
            ),
          
          onChanged: (val){
            title =val;
          },
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
            hintText: "Content",
            hintStyle:
              TextStyle(
                fontSize: 16,
                color: Color(0xFFf6f4e6),
              ),
  
            
            ),
          onChanged: (val){
            content =val;
          },
        ),
        SizedBox(height: 90,),
        Text(" From HowkMii ",style:
              TextStyle(
                fontSize: 14,
                color: Color(0xFFfddb3a)

              ),
            ),
        SizedBox(height: 10,),
        Text(" Contact ",style:
          TextStyle(
                fontSize: 14,
                color: Color(0xFFf6f4e6)

          ),
            ),
        ],),)


      ],),),
      
    );
  }
}