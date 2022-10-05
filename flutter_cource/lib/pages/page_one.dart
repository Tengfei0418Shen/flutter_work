import 'package:flutter/material.dart';
import 'package:flutter_cource/pages/page_two.dart';


class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageOne'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Text('PageOne'),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'page-two'),
                child: Text('命名路由跳转')),
            ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageTwo())),
                child: Text('普通路由跳转')),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'hello'),
                child: Text('命名路由跳转异常')),
          ],
        ),
      ),
    );
  }
}
