

import 'package:flutter/material.dart';

import 'custom_event.dart';


class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String msg = '';
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              '个人信息修改页面',
            )),
      ),
      body: Column(children: [
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          child: TextField(
            controller: controller,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              // msg = _controller.text;
              eventBus.fire(CustomEvent(controller.text));
            },
            child: Text("确定"))
      ]),
    );
  }
}
