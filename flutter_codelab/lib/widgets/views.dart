import 'package:flutter/cupertino.dart';
import 'package:flutter_codelab/widgets/item.dart';
import 'package:flutter_codelab/model/list_model.dart';

import '../model/datas.dart';

class AppList extends StatelessWidget {
  const AppList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          print( items[index]);
          ListModel model = items[index];
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: ListItem(model.bgImage, model.title, model.subTitle),
          );
        },

      ),
    );
  }
}
