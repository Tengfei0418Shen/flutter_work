import 'package:flutter/material.dart';
import 'package:flutter_codelab/pages/land_page.dart';

import '../style/style.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => LandPage()));
    });
    return Container(
      decoration: BoxDecoration(
        color: mainColor,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.mail,
              size: 40,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Colors.white
                ),
              ),
            ),
          )
        ],

      )
      );
  }
}
