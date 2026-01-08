import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Fonts&colors.dart';

class SecontRoute extends StatelessWidget {
  SecontRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hossam",
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_to_queue),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(title: Text('hossam')),
                body: Center(child: Text('hhhhhhhosam')),
              );
            }));
          },
        ),
        body: mylist(),
        appBar: AppBar(),
      ),
    );
  }
}

class mylist extends StatelessWidget {
  const mylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, x) {
        return Container(
          child: Text("$x"),
          color: KBlack,


          padding: EdgeInsets.only(bottom: 10),
          margin: EdgeInsets.fromLTRB(0,20, 0, 0),
        );
      },
    );
  }
}
