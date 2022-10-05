import 'package:flutter/material.dart';
import 'package:flutter_codelab/style/style.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Discover",
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "search",
                          style: tipStyle,
                        ),

                      ]
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: mainColor,
                ),
                child: const Icon(
                  Icons.ice_skating
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
