

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cource/style/style.dart';

class SendFlower extends StatefulWidget {
  const SendFlower({Key? key}) : super(key: key);

  @override
  State<SendFlower> createState() => _SendFlowerState();
}

class _SendFlowerState extends State<SendFlower> {
  int count=0;
  var lastTap = DateTime.now().millisecondsSinceEpoch;

@override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }


  getCounts(){
    return ""+count.toString()+"X";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () =>
        {
          setState(() {
            if(DateTime.now().millisecondsSinceEpoch-lastTap<300){
              count++;
            }else{
              count=0;
            }
            lastTap=DateTime.now().millisecondsSinceEpoch;
            if(count==8){
              // do sth
              print("送花");
          }
          })
        },
        child: Container(
          color: Colors.blue,
          height: 200,
          child: Center(
            child: Row(
              children: [
                Icon(Icons.face_outlined,size: 30+count.toDouble(),color: Colors.white,),
                Text(getCounts(),style: TextStyle(
                    fontSize: 30+count.toDouble(),
                    fontFamily: "haipai",
                    color: Colors.white
                ),
                ),
              ],
            ),
          ),
        ));
  }
}
