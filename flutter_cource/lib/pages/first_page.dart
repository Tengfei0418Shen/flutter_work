import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_cource/pages/second_page.dart';

import 'custom_event.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String msg = "通知内容";
  late StreamSubscription subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subscription = eventBus.on<CustomEvent>().listen((event) {
      print(event);
      setState(() {
        msg = event.msg;
      });
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Text(
        msg,
        style: Theme.of(context).textTheme.headline6,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecondPage())),
      ),
    );
  }
}
