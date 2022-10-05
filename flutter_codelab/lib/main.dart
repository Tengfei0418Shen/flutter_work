import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codelab/pages/UpdatesPage.dart';
import 'package:flutter_codelab/pages/layout_page.dart';
import 'package:flutter_codelab/pages/painter_page.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
 bool theme = true;

  @override
  Widget build(BuildContext context) {
    List<double> list = [1,2,3,4,5,6,7];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness:theme? Brightness.light:Brightness.dark,
      ),
      // home: LayoutPage(),
      // home: UpdatesPage(),
      // home: PaintPage(list),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Updates",
            style: Theme.of(context).textTheme.headline5,
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  theme=!theme;
                  print(theme);
                });
              },
              child: Text("一键换肤"),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.green.shade100,
        ),
        body:UpdatesPage() ,
      ),//

      // home: DetailsPage(),
    );
  }
}