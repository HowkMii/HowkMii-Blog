import 'package:The_blog_app/views/create_blog.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
 
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    var container = Container(
        padding: const EdgeInsets.only(left: 35.0),
        
        child: Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateBlog() ));
            },
            child: Icon(Icons.add),

          )
        ],
        ), 
    );
    return Scaffold(
      
      appBar: AppBar(
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
        

      ),
      body: Container(),
      floatingActionButton: container,
      
    );
    
  }
}