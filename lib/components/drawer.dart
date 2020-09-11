import 'package:flutter/material.dart';
import 'package:myplist/screens/home.dart';
import 'package:myplist/screens/listvideo.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(padding: EdgeInsets.all(5),child: Image.asset('images/yt.png',width: 200,),),
            Text('powered by youtube.com'),
            ListTile(
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Home()),
            ),
              leading: Icon(Icons.home),
              title: Text(
                "HOME",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.video_library),
              title: Text(
                "backnumber",
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ListVideo(
                        url: "https://flutterlistshaka.herokuapp.com/",
                        title: "BEST Songs of BACKNUMBER",
                      ))),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.video_library),
              title: Text(
                "one ok rock",
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ListVideo(
                        url: "https://listoneokrock.herokuapp.com/",
                        title: "Best songs of one ok rock",
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
