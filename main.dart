import 'package:flutter/material.dart';
import 'second.dart';
import 'third.dart';
import 'home.dart';
import 'fourth.dart';

main()=>runApp(first());

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PortFolio',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: new Text('Kawaljeet Singh'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue,

      drawer: Drawer(


        child: ListView(

          children: <Widget>[

            UserAccountsDrawerHeader(
              accountName:Text("Kawaljeet Singh"),


              accountEmail: Text("kawaljeet.ravi@gmail.com"),
              currentAccountPicture:  CircleAvatar(
                backgroundImage: ExactAssetImage('images/resumepic.jpg'),

              ),
        ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home")
              ,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:( context)=> HomePage(),
                ));

              },



            ),
            ListTile(
              leading: Icon(Icons.beenhere),
              title: Text("Services"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:( context)=> SecondPage(),
                ));

              },

            ),ListTile(
              leading: Icon(Icons.work),
              title: Text("Projects"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:( context)=> ThirdPage(),
                ));

              },


            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:( context)=> FourthPage(),
                ));

              },


            ),

          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: new Column(
            children: <Widget>[
          CircleAvatar(
          backgroundImage: ExactAssetImage('images/resumepic.jpg'),
          minRadius: 55,
          maxRadius: 85,
          ),
              new SizedBox(height: 20,),
              new Text('Hi, I am Kawaljeet Singh.',
                style: new TextStyle(fontSize: 35.0,color: Colors.white),),
              new SizedBox(height: 20.0,),
              new Text("Web and Flutter mobile app Developer who loves to code and design websites and mobiles apps.",
              style: new TextStyle(fontWeight:FontWeight.w200,color: Colors.white, fontSize: 30.0 ),)

            ],


          ),

        ),
      ),



      );

  }

}
