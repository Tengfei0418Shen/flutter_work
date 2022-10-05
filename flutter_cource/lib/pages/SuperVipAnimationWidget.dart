import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuperVipAnimationWidget extends StatefulWidget {
  const SuperVipAnimationWidget({Key? key}) : super(key: key);

  @override
  State<SuperVipAnimationWidget> createState() => _NormalAnimationWidgetState();
}

class _NormalAnimationWidgetState extends State<SuperVipAnimationWidget>
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
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Page2() ));
        },
        child: Row(
          children: [
            Hero(
              tag: 'hero',
              child: SizedBox(
                width: 100,
                height: 100,
                child: FlutterLogo(),
              ),
            ),
            Text("点击Logo查看Hero动画效果")
          ],
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


class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Center(
        child:SizedBox(
          width: 300,
          height: 300,
          child: FlutterLogo(),
        )
      ),
    );
  }



}
