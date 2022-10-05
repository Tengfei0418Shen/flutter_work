import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codelab/style/style.dart';
import 'package:flutter_codelab/pages/detail.dart';

class ListItem extends StatelessWidget {
  String bgImage;

  String subTitle;

  String title;

  ListItem(this.bgImage, this.title, this.subTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => ItemDetail( this.title, this.subTitle,this.bgImage,)));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                width: 180,
                height: 280,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        bgImage,
                      ),
                    ),
                    borderRadius:BorderRadius.all(Radius.circular(10))
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: lightTitleStyle,
                    ),
                    Text(
                      subTitle,
                      style: lightSubTitleStyle,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
