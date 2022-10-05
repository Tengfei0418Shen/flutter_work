

import 'package:flutter/material.dart';

import 'custom_event.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sceond Page'),
      ),
      body: ElevatedButton(
        onPressed: () => eventBus.fire(CustomEvent("hello")),
        child: Text("Event Bus 测试"),
      ),
    );
  }
}
