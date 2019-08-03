import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: new Text('Contact Me'),
      ),
      body:

      Container(
        child:new ListView(


          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: new TextField(
                style: TextStyle(color: Colors.white),


                decoration: new InputDecoration(labelText: 'Name',),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Email'),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Subject'),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: new TextField(
                maxLength: 100,
                decoration: new InputDecoration(labelText: 'Message'),
              ),
            ),
            Center(

              child: new RaisedButton(
                child: new Text("Send Message",style: new TextStyle(color: Colors.white),),
                onPressed: null,
                elevation: 4.0,


                padding: EdgeInsets.all(25.0),

                color: Colors.red,

              ),
            ),
           SizedBox(height: 20.0,),
           Padding(
             padding: const EdgeInsets.only(left:25.0),
             child: new Text("Follow me on :",style: new TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w300),),
           ),
           SizedBox(height: 20.0,),
           Row(
             children: <Widget>[



                   FlatButton(
                     onPressed: _launchURL1,
                     child: Image.asset("images/linkedin.png",width: 40.0,height: 40.0,),

                   ),
                 FlatButton(
                   onPressed: _launchURL2,
                   child: Image.asset("images/fb.png",width: 40.0,height: 40.0,),

                 ),
                 FlatButton(
                   onPressed: _launchURL3,
                   child: Image.asset("images/instafix.jpg",width: 40.0,height: 40.0,),

                 ),
                 FlatButton(
                   onPressed: _launchURL4,
                   child: Image.asset("images/twitter.png",width: 40.0,height: 40.0,),

                 ),

             ],
           ),








          ],

        ),
      ),
    );
  }
  _launchURL4() async {
    const url = 'https://twitter.com/KAWALJE42640696';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL3() async {
    const url = 'https://www.instagram.com/kawaljeet.ravi/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }_launchURL2() async {
    const url = 'https://www.facebook.com/kawaljeet.singh.3994';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }_launchURL1() async {
    const url = 'https://www.linkedin.com/in/kawaljeet-singh-667627149?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Bru0cEqM8S%2BOLADXjLeaFgg%3D%3D';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
