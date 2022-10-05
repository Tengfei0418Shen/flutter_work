import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codelab/model/datas.dart';
import 'package:flutter_codelab/model/list_model.dart';
import 'package:flutter_codelab/style/style.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow:[
          BoxShadow(
            color: Colors.black87.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset.zero,
          )
        ] ,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(barItems.length, (index) {
          AppBottomBarItem currentItem = barItems[index];
          Widget barItemWidget;
          if(currentItem.isSelected){
            barItemWidget = Container(
              padding: EdgeInsets.fromLTRB(15 , 5, 15, 5),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    currentItem.icon,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentItem.label,
                    style: bottomItemStyle,
                  )
                ],
              ),
            );
          }else{
            barItemWidget = IconButton(
                onPressed: () {
                  setState(() {
                    for(var item in barItems){
                      item.isSelected = item == currentItem;
                    }
                  });
                },
                icon: Icon(
                  currentItem.icon,
                  color: Colors.grey,
                )
            );
          }
          return barItemWidget;
        }
        ),
      ),
    );
  }
}
