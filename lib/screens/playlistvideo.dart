
import 'package:myplist/screens/viewvideo.dart';


import 'package:flutter/material.dart';



class PlayListVideo extends StatelessWidget {
  final List list;
  PlayListVideo({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => VideoPlay(
                          url:
                              "https://youtube.com/embed/${list[i]['contentDetails']['videoId']}",
                        ))),
                child: Container(
                  height: 210.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              list[i]['snippet']['thumbnails']['high']['url']),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(padding: const EdgeInsets.all(10.0)),
              Text(
                list[i]['snippet']['title'],
                style: TextStyle(fontSize: 18.0),
              ),
              Padding(padding: const EdgeInsets.all(10.0)),
              Divider(),
            ],
          ),
        );
      },
    );
  }
}
