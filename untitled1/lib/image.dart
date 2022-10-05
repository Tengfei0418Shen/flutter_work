import 'package:flutter/material.dart';

class ImageTest extends StatefulWidget {
  const ImageTest({Key? key}) : super(key: key);

  @override
  State<ImageTest> createState() => _ImageTestState();
}

List<String> imageList = [
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2Ftp09%2F210F2130512J47-0-lp.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1664960020&t=d90fe939d211d4556a6d61813412c67d",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1113%2F052420110515%2F200524110515-1-1200.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1664960020&t=e3cfa8fc5eefa70637e50a54acb31cdf",
  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2Ftp09%2F21031FKU44S6-0-lp.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1664960020&t=4c0cac41980e4d0137fab89179560e35",
];
int index = 0;

class _ImageTestState extends State<ImageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "aaaa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatatadatadatadatadatadatadatadatadatadata",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 40,
                decoration: TextDecoration.underline,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Image.network(
                imageList[index],
                fit: BoxFit.fitWidth,
              ),
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (index > 0) {
                        index--;
                        print(index);
                      }
                    });
                  },
                  child: const Text("last"),
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.red.shade200),
                    onPressed: () => {
                          setState(() {
                            if (index < imageList.length - 1) {
                              index++;
                            }
                          })
                        },
                    child: const Text("next")),
                TextButton(
                    onPressed: () => print("TextButton click"),
                    child: const Text("TextButton btn"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
