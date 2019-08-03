import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("About me"),
      ),
      backgroundColor: Colors.blue,
     body: Center(
       child: Column(

         children: <Widget>[

           Padding(
             padding: const EdgeInsets.all(50.0),
             child: new Text("WHO AM I??",style: new TextStyle(fontSize: 35.0,fontWeight: FontWeight.w400,color: Colors.white),),
           ),
           new Text("Hii, My name is Kawaljeet Singh.I live in Bangalore but I call many places my home in India. I love Developing and designing Web and Android Applications. I had been doing FreeLancing since a while. ",style: new TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.w200,),)
         ],
       ),
     ),


    );
  }
}
