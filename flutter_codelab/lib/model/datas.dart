import 'package:flutter/material.dart';

import 'list_model.dart';

List<ListModel> items = [
  ListModel(
    "Mount Semeru",
    "East Java",
    "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/c.jpg"
  ),
  ListModel(
      "Mount Semeru",
      "East Java",
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/a.jpg"
  ),  ListModel(
      "Mount Semeru",
      "East Java",
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/b.jpg"
  ),  ListModel(
      "Mount Semeru",
      "East Java",
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/d.jpg"
  ),  ListModel(
      "Mount Semeru",
      "East Java",
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/e.jpg"
  ),
];



List<AppBottomBarItem> barItems = [
  AppBottomBarItem(
      Icons.home,
      "Home",
      true
  ),
  AppBottomBarItem(
      Icons.explore,
      "Explore",
      false
  ),
  AppBottomBarItem(
      Icons.tag,
      "Tag",
      false
  ),
  AppBottomBarItem(
      Icons.person_outline,
      "Profile",
      false
  ),
];