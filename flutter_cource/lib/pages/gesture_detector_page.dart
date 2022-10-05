import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawGestureDetector(
        gestures: {
          MultiTapGestureRecognizer:
              GestureRecognizerFactoryWithHandlers<MultiTapGestureRecognizer>(
                  () => MultiTapGestureRecognizer(),
                  (MultiTapGestureRecognizer instance) {
            instance.onTap = () => print("Parent Tapped");
            // instance. = () => print("Parent Tapped");
          })
        },
        child: Container(
          color: Colors.pink,
          child: Center(
            child: GestureDetector(
              // onTap: () => print('Child Tapped'),
              onDoubleTap: () => print('double Tapped'),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: TextButton(
                  onPressed: () => print('Button Tapped'),
                  child: const Text(
                    "点击",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      // body: Container(
      //   color: Colors.pink,
      //   child: GestureDetector(
      //     onDoubleTap: () => print('父组件双击'),
      //     child: Center(
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.pink,
      //         child: GestureDetector(
      //           child: ElevatedButton(
      //             onPressed: () => print('按钮单击'),
      //             child: const Text(
      //               '单击',
      //               style: TextStyle(fontSize: 20),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

class MultiTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}
