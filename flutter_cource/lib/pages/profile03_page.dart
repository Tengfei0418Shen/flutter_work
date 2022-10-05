import 'dart:async';

import 'package:flutter/material.dart';

import 'custom_event.dart';
import 'edit_personel_page.dart';


class ProfilePage03 extends StatefulWidget {
  const ProfilePage03({Key? key}) : super(key: key);

  @override
  State<ProfilePage03> createState() => _ProfilePage03State();
}

class _ProfilePage03State extends State<ProfilePage03> {
  String msg = 'YY';
  late StreamSubscription subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subscription = eventBus.on<CustomEvent>().listen((event) {
      print(event);
      setState(() {
        msg = event.msg;
      });
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color1 = Color(0XffE5F15F);
    final Color color2 = Color(0XffE5F15F);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 360,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                const Text(
                  'About me',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontStyle: FontStyle.italic,
                      fontFamily: '小豆岛默陌枝桠简-闪'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          'https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/aaa.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          msg,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'SCS  - 212',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontSize: 18, color: Colors.red),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.grey,
                    ),
                    Text(
                      'Yangshan  North  Street 1,NANJING',
                      style: TextStyle(
                          color: Colors.grey.shade600,

                          fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [color1, color2],
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                                // FontAwesomeIcons.user,
                                Icons.co2),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.location_on,
                            ),
                            color: Colors.white,
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                            ),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.message,
                            ),
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              IconButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditPage())),
                  icon: Icon(Icons.menu))
            ],
          )
        ],
      ),
    );
  }
}
