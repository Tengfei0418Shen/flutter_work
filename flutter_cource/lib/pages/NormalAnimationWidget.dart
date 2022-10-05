import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalAnimationWidget extends StatefulWidget {
  const NormalAnimationWidget({Key? key}) : super(key: key);

  @override
  State<NormalAnimationWidget> createState() => _NormalAnimationWidgetState();
}

class _NormalAnimationWidgetState extends State<NormalAnimationWidget>
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
      ..addListener(() {
        setState(() {

        });
      });
    controller.repeat(reverse: true);
    // 创建一个从50到200线性变化的Animation对象
    // animation = Tween(
    //   begin: 50.0,
    //   end: 200.0,
    // ).animate(controller)
    // ..addListener(() {
    //   setState(() {
    //
    //   });
    // });

    //启动动画
    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: animation.value,
        height: animation.value,
          child: Icon(Icons.favorite,color: Colors.red,size: animation.value
            ,),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
