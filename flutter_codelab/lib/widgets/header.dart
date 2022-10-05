import 'package:flutter/material.dart';

import '../style/style.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://ts1.cn.mm.bing.net/th/id/R-C.876d98b09f9eb9576dc3d8842a0034f4?rik=SEgYsoyFZQxPPg&riu=http%3a%2f%2ftupian.qqw21.com%2farticle%2fUploadPic%2f2019-1%2f201912319273090791.jpg&ehk=LsHqnjsVSG6v5Ts4Irux9sjNtk4WcVkjdRy%2b98MTeN4%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1"
            ),
            radius: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "hello",
                  style: titleStyle,
                ),
                Text(
                  "good",
                  style: summaryStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
