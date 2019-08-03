import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Projects"),
      ),
      backgroundColor: Colors.blue,
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(

            children: <Widget>[
              new Text("View my Projects on:",style: new TextStyle(color: Colors.white,fontSize: 25.0),),
             SizedBox(height: 40.0,),
             // new Image.asset('images/git.png',width: 180.0,height: 180.0,),
              FlatButton(
                onPressed: _launchURL,
                child: Image.asset('images/git.png',width: 150.0,height: 150.0,),
              ),
              SizedBox(height: 40.0,),
              FlatButton(
                onPressed: _launchURL1,
                child: Image.asset('images/bit1.jpg',width: 150.0,height: 150.0,),
              ),
            ],
          ),
        ),
      ),
    );
  }
  _launchURL() async {
    const url = 'https://github.com/kawaljee';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL1() async {
    const url = 'https://bitbucket.org/%7B2bf2aa15-d416-4310-986d-a85ea66a5f14%7D/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


