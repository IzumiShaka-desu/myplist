import 'package:flutter/material.dart';
import 'package:myplist/components/drawer.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('My Youtube PlayList'),
        backgroundColor: bg,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Explore your video",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
