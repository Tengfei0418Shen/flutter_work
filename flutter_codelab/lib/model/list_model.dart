import 'package:flutter/material.dart';
import 'package:flutter_codelab/widgets/bottom_bar.dart';

class ListModel {
  String title;
  String subTitle;
  String bgImage;

  ListModel(this.title,this.subTitle,this.bgImage);
}

class ListModel2 {
  String text;
  String imgUrl;

  ListModel2(this.imgUrl,this.text);
}



class AppBottomBarItem{
  IconData icon;
  String label;
  bool isSelected;

  AppBottomBarItem(this.icon,this.label,this.isSelected);
}