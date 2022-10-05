import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cource/style/style.dart';

class FanqieZhong extends StatefulWidget {
  const FanqieZhong({Key? key}) : super(key: key);



  @override
  State<FanqieZhong> createState() => _FanqieZhongState();
}

class _FanqieZhongState extends State<FanqieZhong> {
  late int count;
  late double standard=1.0;
  late Timer timer;
  bool state = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // count = Duration.secondsPerMinute * 1;
    count = 10;
    timer = Timer(const Duration(seconds: 1),(){});

  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  void startTimer(){
    timer.cancel();
    state = !state;
    print(state);
    setState(() {
      if(state){
        icon = Icons.pause;
      }else{
        icon = Icons.play_arrow;
      }
    });

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(state){
        setState(() {
          count--;
          standard = Random().nextDouble();
        });
      }
      if(count==0) {
        timer.cancel();
        showDialog(context: context, builder: (context){
          return const AlertDialog(
            content: Text(
                "恭喜你完成任务",
              style: darkTwo,
            ),
          );
        });
      }
    });
  }
  String getCount(){
    return "${(count~/60).toString().padLeft(2,"0")}:${(count%60).toString().padLeft(2,"0")}";
  }
  IconData icon = Icons.play_arrow;

  @override
  Widget build(BuildContext context) {
    Color myColor = Color.fromRGBO((standard*255).toInt(), (standard*122).toInt(), (standard*122).toInt(), 1);
    return  SafeArea(
      top: false,

      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image:DecorationImage(
                  image:NetworkImage(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201910%2F17%2F20191017231858_ZSZjP.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1665997811&t=e8e7a949e9decd2be3eefee65d5784a7",
                  ),
                  fit: BoxFit.cover
              )
          ),
          child: Center(
            child: Text(getCount(),style: TextStyle(
                fontSize: 25,
                fontFamily: "haipai",
              color: myColor
            ),),
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            startTimer();
          },
          child: Icon(
            icon,
            size: 40,
          ),
        ),
      ),
    );
  }
}
