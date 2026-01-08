import 'package:flutter/material.dart';
import 'Fonts&colors.dart';
import 'pages/SecondScreen.dart';
//import 'ThirdScreen.dart.dart';
import 'counter.dart';


void main() {
  runApp(const Navigation());
}

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/1',
      routes: {
        '/1': (context) => FirstRoute(), //home//
        '/2': (context) => SecontRoute(), //أذكار الصباح //
        //'/3': (context) => ThirdScreen(), //أذكار المساء //
        //'/4': (context) => FourthScreen(), //أذكار المسلم //
        '/5': (context) => timer(), //تسبيح //

      },
      title: 'open',
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff424842),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text('hossam')),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /////////////////////أذكار الـمــســاء   //////////////////////////////////
                  Container(
                    margin: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 70,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () => print('Iam ok'),
                        child: Text('اذكار المساء', style: font1),
                      ),
                    ),
                  ),
                  /////////////////////أذكار الــصــبـاح   //////////////////////////////////
                  Container(
                    margin: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 70,
                      width: 150,
                      child: ElevatedButton(
                        child: Text('اذكار الصباح', style: font1),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ('/2')
                              );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ////////////////////// تـســبــيح /////////////////////////////////////////
                  Container(
                    margin: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 70,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, ('/5')),
                        child: Text('تسبيح', style: font1),
                      ),
                    ),
                  ),
                  /////////////////////أذكار الـمــســلم   //////////////////////////////////
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 70,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () => print('Iam ok'),
                        child: Text('اذكار المسلم', style: font1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
