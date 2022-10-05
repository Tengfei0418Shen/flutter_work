import 'package:flutter/material.dart';
import 'package:flutter_cource/pages/SendFlower.dart';
import 'package:flutter_cource/pages/animation_page.dart';
import 'package:flutter_cource/pages/counter_deno_page.dart';
import 'package:flutter_cource/pages/fanqiezhong.dart';
import 'package:flutter_cource/pages/gesture_detector_page.dart';
import 'package:flutter_cource/pages/gesturerecogniser.dart';
import 'package:flutter_cource/pages/notifiction_demo_page.dart';
import 'package:flutter_cource/pages/page_one.dart';
import 'package:flutter_cource/pages/page_threee.dart';
import 'package:flutter_cource/pages/page_two.dart';
import 'package:flutter_cource/pages/profile03_page.dart';
import 'package:flutter_cource/pages/test1.dart';
import 'package:flutter_cource/pages/unknow_page.dart';

void main() {

  // Future(()=>print("f1"));
  // Future(()=>print("f2"));
  //
  // Future(()=> print("f3")).then((_) => print("then 3"));
  //


  // Future(()=> null).then((_) => print("then 4"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'page-one': (context) => PageOne(),
        'page-two': (context) => PageTwo(),
        'page-three': (context) => PageThree(),
      },
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => UnknowPage()),
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: SendFlower(),
      // home: GesRecer(),
      // home: FanqieZhong(),
      // home: FirstPage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),




      // home: const GestureDetectorPage(),
      // home: const CounterDemoPage(),
      // home: const NotificationDemoPage(),
      // home: const ProfilePage03(),
      // home: const PageOne(),
      home: const AnimationPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontFamily: "haipai",
                fontSize: 22
              ),
            ),
          ],
        ),
      ),
    );
  }
}
