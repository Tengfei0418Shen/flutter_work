import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuperAnimationWidget extends StatefulWidget {
  const SuperAnimationWidget({Key? key}) : super(key: key);

  @override
  State<SuperAnimationWidget> createState() => _NormalAnimationWidgetState();
}

class _NormalAnimationWidgetState extends State<SuperAnimationWidget>
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
    return AnimatedLogo(animation: animation,);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}

class AnimatedLogo extends AnimatedWidget{
  AnimatedLogo({
    Key? key,
    required Animation<double> animation,
}):super(key: key,listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;

    return Center(
      child: SizedBox(
        width: animation.value,
        height: animation.value,
        child: FlutterLogo(),
      ),
    );
  }
}
