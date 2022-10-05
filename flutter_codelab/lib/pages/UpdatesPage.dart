import 'package:flutter/material.dart';
import 'package:flutter_codelab/model/update_List.dart';

class UpdatesPage extends StatelessWidget {
  UpdatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    ListView.separated(
          itemBuilder: _UpdateList,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.grey,
            );
          },
          itemCount: getUpdateList().length);
    // );
  }

  Widget _UpdateList(BuildContext context, int index) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    getUpdateList()[index].imgUrl,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    // model.appName,
                    getUpdateList()[index].title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    getUpdateList()[index].date,
                    maxLines: 1,
                  )
                ],
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: OutlinedButton(
                  child: Text("UPDTAE"),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                    color: Colors.blue,
                  )),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                TextSare(index),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Version:${getUpdateList()[index].ves} · ${getUpdateList()[index].size}  MB"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class TextSare extends StatefulWidget {

  TextSare(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  State<TextSare> createState() => _TextSareState();
}

class _TextSareState extends State<TextSare> {
  int num = 2;
  String sare = "展开";

  @override
  Widget build(BuildContext context ) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            getUpdateList()[widget.index].content,
            maxLines: num,
            overflow: TextOverflow.ellipsis,
          ),
          TextButton(
            onPressed: () {
              setState(() {

                if (num == 2) {
                  num += 999;
                  sare = "收起";
                } else {
                  num = 2;
                  sare = "展开";
                }
              });
            },
            child: Text(sare),
          ),
        ],
      ),
    );
  }
}
