import 'package:flutter/material.dart';

import 'counter_container.dart';
import 'counter_widget.dart';


class CounterDemoPage extends StatefulWidget {
  const CounterDemoPage({Key? key}) : super(key: key);

  @override
  State<CounterDemoPage> createState() => CounterDemoPageState();
}

class CounterDemoPageState extends State<CounterDemoPage> {
  int count = 100;

  void _add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedWidget传值'),
      ),
      body: CounterContainer(
          model: this, increment: _add, child: CounterWidget()),
    );
  }
}
