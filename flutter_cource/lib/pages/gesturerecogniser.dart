import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cource/style/style.dart';

class GesRecer extends StatelessWidget {
  const GesRecer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "冒泡",
            style: darkTwo,
          ),
        ),
        // body: GestureDetector(
        //   onTap: () => print("parent tapped"),
        //   child: Container(
        //     color: Colors.blue,
        //     child: GestureDetector(
        //         onTap: () => print("child tapped"),
        //         child: Center(
        //          child: Container(
        //            width: 200,
        //            height: 200,
        //            color: Colors.pink,
        //          ),
        //         )
        //     ),
        //   ),
        // ),
        body: RawGestureDetector(
          gestures: {
            MultipleTapGestureRecognizer: GestureRecognizerFactoryWithHandlers<
                    MultipleTapGestureRecognizer>(
                () => MultipleTapGestureRecognizer(),
                (MultipleTapGestureRecognizer instance) =>
                {instance.onTap = () =>
                {
                  print("parent tapped"),
                  print(instance)
                }
                }
            ),
          },
          child: GestureDetector(
              onTap: () => print("child tapped"),
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.pink,
                ),
              )),
        ));
  }
}

class MultipleTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}
