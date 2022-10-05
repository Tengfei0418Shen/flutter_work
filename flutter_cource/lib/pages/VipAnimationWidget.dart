import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VipAnimationWidget extends StatefulWidget {
  const VipAnimationWidget({Key? key}) : super(key: key);

  @override
  State<VipAnimationWidget> createState() => _NormalAnimationWidgetState();
}

class _NormalAnimationWidgetState extends State<VipAnimationWidget>
    with SingleTickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 创建一个动画周期为1s的 AnimationController 对象
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000,),

    );

    final CurvedAnimation curve = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );

    animation = Tween(
      begin: 50.0,
      end: 200.0,
    ).animate(curve)
    ;

    controller.repeat(reverse: true);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context,Widget? child)=>SizedBox(
          width: animation.value,
          height: animation.value,
          child: FlutterLogo(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
