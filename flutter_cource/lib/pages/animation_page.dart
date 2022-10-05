import 'package:flutter/material.dart';
import 'package:flutter_cource/pages/SuperAnimationWidget.dart';
import 'package:flutter_cource/pages/SuperVipAnimationWidget.dart';
import 'package:flutter_cource/pages/VipAnimationWidget.dart';

import 'NormalAnimationWidget.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("动画学习"),
          ),
          body: TabBarView(
            children: [
              NormalAnimationWidget(),
              SuperAnimationWidget(),
              VipAnimationWidget(),
              SuperVipAnimationWidget(),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: TabBar(
              tabs: [
                Tab(
                  text: "普通动画",
                  icon: Icon(Icons.h_mobiledata),
                ),
                Tab(
                  text: "widget动画",
                  icon: Icon(Icons.read_more),
                ),
                Tab(
                  text: "builder动画",
                  icon: Icon(Icons.safety_check),
                ),
                Tab(
                  text: "hero动画",
                  icon: Icon(Icons.face_outlined),
                ),
              ],
              unselectedLabelColor: Colors.orange,
              labelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.blue,
            ),
          ),
        ),
    );
  }
}
