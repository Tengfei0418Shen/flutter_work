import 'dart:math';

import 'package:flutter/material.dart';

class PaintPage extends StatelessWidget {
  final List<double> doubleList;

  PaintPage(this.doubleList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "自绘组件",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomPaint(
          size: const Size(200, 200),
          painter: WheelPainter(doubleList),
        ),
      ),
    );
  }
}

class WheelPainter extends CustomPainter {
  final List<double> doubleList;

  WheelPainter(this.doubleList);

  Paint getColoredPaint(Color color) {
    Paint paint = Paint();
    paint.color = color;
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double wheelSize = min(size.width, size.height) / 2;
    int nbElem = doubleList.length;
    // double radius = (2 * pi) / nbElem;
    double sum=0;
    for(var item in doubleList) {
      sum+=item;

    }

    Rect boundingRect = Rect.fromCircle(
        center: Offset(wheelSize, wheelSize), radius: wheelSize);
    double now_radius=0;
    for (var i in doubleList) {
      // sum
      canvas.drawArc(boundingRect, now_radius/sum*2*pi, i/sum*2*pi, true, getColoredPaint(
          Color.fromRGBO(
              Random().nextInt(
                  255),Random().nextInt(255), Random().nextInt(255),1)
      ));
      now_radius+=i;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
