import 'package:flutter/material.dart';
import 'package:local_cache_sync/local_cache_sync.dart';
import 'package:share_app/pages/profile_page.dart';
import 'package:share_app/styles/colors.dart';
import 'package:share_app/styles/config.dart';

import '../common/local_cache.dart';
import '../models/ResponseDart.dart';
import 'blank.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // List<>

  @override
  Widget build(BuildContext context) {
    ResponseDart userinfo =ResponseDart.fromJson(LocalCacheSync.userDefault.getWithKey<Map>('loginUser'));
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Config.primarySwatchColor.shade50,
        // appBar: AppBar(
        //   actions: [
        //     IconButton(onPressed: (){
        //       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        //         return ProfilePage();
        //       }));
        //     },
        //       icon:  Icon(Icons.person))
        //   ],
        // ),
        body: TabBarView(
          children: [
            BlankPage(),
            BlankPage(),
            BlankPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: TabBar(
            tabs: [
              Tab(
                text: "主页",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "记录",
                icon: Icon(Icons.access_time_outlined),
              ),
              Tab(
                text: "动态",
                icon: Icon(Icons.notifications_active_outlined),
              ),
              Tab(
                text: "个人",
                icon: Icon(Icons.face_outlined),
              ),
            ],
            unselectedLabelColor: Config.primarySwatchColor.shade300,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: borderColor,
          ),
        ),
      ),
    );
  }
}

