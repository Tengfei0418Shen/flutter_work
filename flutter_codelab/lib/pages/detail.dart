import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codelab/pages/land_page.dart';
import 'package:flutter_codelab/style/style.dart';

class ItemDetail extends StatelessWidget {
  String title;
  String bgImage;
  String subTitle;

  ItemDetail(this.title, this.subTitle, this.bgImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgColor,
      extendBody: true, //底部NavigationBar透明
      extendBodyBehindAppBar: true, //顶部Bar透明
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Icon(
          color: mainColor,
          Icons.email,
        ),
        leading: BackButton(
          color: mainColor,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => LandPage()));
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more,
              color: mainColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: 4000,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  bgImage,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
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
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                height: 75,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Text(
                      "Rating",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      "5.0",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    )
                  ],
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      "\$5.0",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    )
                  ],
                ),
              ),
              Container(
                height: 75,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Text(
                      "Open",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      "24hr",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "About asdaass",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            "In short, the microservice architectural style is an approach to developing a single application as a suite of small services, each running in its own process and communicating with lightweight mechanisms, often an HTTP resource API. These services are built around business capabilities and independently deployable by fully automated deployment machinery. There is a bare minimum of centralized management of these services, which may be written in different programming languages and use different data storage technologies.",
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 15,),
              Expanded(
                  child:ElevatedButton (
                    onPressed: () {

                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Button",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.archive
                ),
              ),
              SizedBox(width: 15,),
            ],
          )
        ],
      ),
    );
  }
}
