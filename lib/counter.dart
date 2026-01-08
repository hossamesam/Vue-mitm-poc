import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';


class timer extends StatefulWidget {
  @override
  State<timer> createState() => _HomeState();
}

class _HomeState extends State<timer> {
  int x = 0;

  void addss() {
    setState(() {
      x++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('hostname'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$x',
                style: GoogleFonts.amiri(
                  fontSize: 40,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              FloatingActionButton(
                child: Text(
                  'click',
                  style: TextStyle(color: Colors.indigo),
                ),
                onPressed: addss,
                backgroundColor: Colors.cyanAccent,
              ),
            ],
          ),
        ),
        );
  }
}


//////////////////////////////////ss,mylist is  list and button/////////////////////////////
class ss extends StatelessWidget {
  const ss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hossam",
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_to_queue),
        onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                title: Text('hossam') ),
                body: Center(child: Text('hhhhhhhosam')),
              );
            }));
          },
        ),
        body:mylist(),

        appBar: AppBar(

        ),
      ),
    );
  }
}
class mylist extends StatelessWidget {
  const mylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    padding: const EdgeInsets.all(5),
       itemBuilder: (context, i){
      return const ListTile(
        title : Text("fff"),
        subtitle: Text('kjkkk')

      );
       },
    );
  }
}
