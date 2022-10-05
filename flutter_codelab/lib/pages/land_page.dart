import 'package:flutter/material.dart';
import 'package:flutter_codelab/pages/detail.dart';
import 'package:flutter_codelab/widgets/search.dart';
import 'package:flutter_codelab/style/style.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/header.dart';
import '../widgets/views.dart';
import '../widgets/item.dart';

class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // extendBody: true, //底部NavigationBar透明
      // extendBodyBehindAppBar: true,//顶部Bar透明
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title:Icon(
            Icons.email,color: mainColor,
          ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share,
              color: mainColor,
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
          AppHeader(),
          AppSearch(),
          SizedBox(
            height: 20,
          ),
          AppList(),
          // ItemDetail(),
          SizedBox(
            height: 110,
          ),
          AppBottomBar(),
        ],
      ),
    );
  }
}
