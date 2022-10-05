import 'package:flutter/material.dart';

import '../model/list_model.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  final List<ListModel2> items = [
    ListModel2(
        "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/img/15690311636958128.jpg",
        "Food"),
    ListModel2(
        "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/avatar/head1.jpg",
        "Head"),
    ListModel2(
        "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/avatar/head2.jpg",
        "XiaoXin"),
    ListModel2(
        "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/avatar/head3.jpg",
        "Cat"),
  ];

  final List<String> banner = [
    "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/banner/banner12.jpg",
    "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/banner/banner2.jpg",
    "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/banner/banner6.jpg",
    "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/banner/banner9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Layout'),
        //   centerTitle: true,
        // ),
        body: Stack(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFFFEE), Color(0xFF999999)],
            ),
          ),
        ),
        ListView.builder(
          itemCount: 7,
          itemBuilder: _buildBody,
        )
      ],
    ));
  }

  Widget _buildBody(BuildContext context, int index) {
    if (index == 0) return _buildHeader(context);
    if (index == 1) return _buildSectionHeader(context);
    if (index == 2) return _buildCollectionRow(context);
    if (index == 3) {
      return Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(10),
        child: Text(
          'Most liked posts',
          style: Theme.of(context).textTheme.headline4,
        ),
      );
    }
    if (index == 4) return _buildListItem(context);
    return Container();
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      height: 330,
      // color: Colors.red,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(40),
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 8,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Flutter 布局',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'UI/UX designer | Flutter Developer',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '302',
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'Post',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '10.3k',
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'FOLLOWER',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '120',
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              'FOLLOWING',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Material(
                elevation: 12.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://chl-bucket.oss-cn-hangzhou.aliyuncs.com/img/15690311636958128.jpg"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Collection',
            style: Theme.of(context).textTheme.headline4,
          ),
          TextButton(
            onPressed: (){},
            child: Text('Create new',style: Theme.of(context).textTheme.bodyMedium),

          ),
        ],
      ),
    );
  }

  Widget _buildCollectionRow(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: _list,
          itemCount: items.length,
        ));
  }

  Widget _buildListItem(BuildContext context) {
    return SizedBox(
        height: 400,
        child: ListView.builder(
          itemBuilder: _bannerList,
          itemCount: banner.length,
        ));
  }

  Widget _list(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                    items[index].imgUrl,
                  ))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            items[index].text,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }

  Widget _bannerList(BuildContext context, int index) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Material(
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    banner[index],
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ));
  }
}
