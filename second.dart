import 'package:flutter/material.dart';
import 'main.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Services'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue,
        body: new ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Center(
                child: new Column(
                  children: <Widget>[
                    new Image.asset('images/html.png',width: 100.0,height: 100.0,),
                    new SizedBox(height: 10.0,),
                    new Text("HTML 5",style: new TextStyle(color: Colors.white,fontSize: 20.0,),)
                  ],


                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: new Column(
                children: <Widget>[
                  new Image.asset('images/css.png',width: 100.0,height: 100.0,),
                  new SizedBox(height: 10.0,),
                  new Text("CSS 3",style: new TextStyle(color: Colors.white,fontSize: 20.0,),)
                ],


              ),

            ),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: new Column(
                children: <Widget>[
                  new Image.asset('images/java.png',width: 100.0,height: 100.0,),
                  new SizedBox(height: 10.0,),
                  new Text("JAVA",style: new TextStyle(color: Colors.white,fontSize: 20.0,),)
                ],


              ),

            ),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: new Column(
                children: <Widget>[
                  new Image.asset('images/flutter.png',width: 100.0,height: 100.0,),
                  new SizedBox(height: 10.0,),
                  new Text("Flutter",style: new TextStyle(color: Colors.white,fontSize: 20.0,),)
                ],


              ),

            ),

          ],
        ),


    );
  }
}
