import 'package:flutter/material.dart';

import 'custom_noticefiction.dart';

class NotificationDemoPage extends StatefulWidget {
  const NotificationDemoPage({Key? key}) : super(key: key);

  @override
  State<NotificationDemoPage> createState() => _NotificationDemoPageState();
}

class _NotificationDemoPageState extends State<NotificationDemoPage> {
  String _msg = '快去学习!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notofication 练习",
        ),
      ),
      body: Center(
        child: NotificationListener<CustomNotification>(
          onNotification: (notice) {
            setState(() {
              _msg += notice.msg + ',';
            });
            return true;
          },
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(_msg), CustomChild()],
            ),
          ),
        ),
      ),
    );
  }
}
