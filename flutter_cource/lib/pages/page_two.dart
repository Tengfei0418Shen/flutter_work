import 'package:flutter/material.dart';

import 'addNumber.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String? _msg = '111';
  int a = 10;
  int b = 20;
  String c = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Column(
        children: [
          // Text(_msg!),
          Text(c),
          Text('PageTwo'),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'page-three',
                          arguments: AddNumber(a, b))
                      .then((value) {
                    setState(() {
                      // _msg = value as String?;
                      print(value);
                      c = value.toString();
                    });
                  }),
              child: Text('跳转到PageThree'))
        ],
      ),
    );
  }
}
