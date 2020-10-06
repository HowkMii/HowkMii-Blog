import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
      
    );
  }
}