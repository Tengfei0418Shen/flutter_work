import 'package:flutter/material.dart';

import 'addNumber.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String msg = ModalRoute.of(context)!.settings.arguments as String;
    AddNumber _numbers =
        ModalRoute.of(context)!.settings.arguments as AddNumber;
    return Scaffold(
      appBar: AppBar(
        title: Text('PageThree'),
      ),
      body: Row(
        children: [
          Text("PageThree 和为${_numbers.a + _numbers.b}"),
          ElevatedButton(
              onPressed: () => {
                    Navigator.pop(context, '和为${_numbers.a + _numbers.b}'),
                  },
              child: Text('返回page two'))
        ],
      ),
    );
  }
}
