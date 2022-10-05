import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cource/style/style.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    // TargetPlatform platform = defaultTargetPlatform;
    // if (platform != TargetPlatform.iOS) {
    //   SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.dark, // dark是白字，light是黑字
    //   );
    //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // }

    return Scaffold(
      // appBar: AppBar(
      //   // elevation: 0,
      //   title: Text("My FirstPage", style: darkThree),
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      // ),

      body: SafeArea(
        top: false,
          child: Stack(
        children: [
          Container(
            height: 300,
            foregroundDecoration: BoxDecoration(
              color: Color.fromRGBO(255, 122, 122, 0.2),
            ),
            decoration: BoxDecoration(
              color: Colors.black26
            ),
            child: Image.network(
              "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/aaa.jpg",
              fit: BoxFit.cover,
            ),
          ),
         Padding(
             padding: EdgeInsets.only(top: 310),
           child: Column(
             children: [
               SizedBox(height: 10,),
               Text(
                   "自制主题文字",
                 style: darkFirst,
               ),
               SizedBox(height: 10,),
               Text(
                 "自制主题文字",
                 style: darkFirstQingling,
               ),
             ],
           ),
         )
        ],
      )),
    );
  }
}
