import 'dart:async';

import 'package:flutter/material.dart';
import 'package:local_cache_sync/local_cache_sync.dart';
import 'package:share_app/pages/index_page.dart';
import 'package:share_app/pages/login_page.dart';

import '../models/ResponseDart.dart';
import '../styles/config.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage03State();
}

class _ProfilePage03State extends State<ProfilePage> {
  ResponseDart userinfo = ResponseDart.fromJson(
      LocalCacheSync.userDefault.getWithKey<Map>('loginUser'));

  // String msg = userinfo.nickname;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color1 = Color(0XffE5F15F);
    final Color color2 = Color(0XffE5F15F);

    return Scaffold(
      backgroundColor: Config.primarySwatchColor.shade50,
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              gradient: LinearGradient(
                colors: [
                  Config.primarySwatchColor.shade50,
                  Config.primarySwatchColor.shade300
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                // const Text(
                //   'About me',
                //   style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 28,
                //       fontStyle: FontStyle.italic,
                //       fontFamily: 'haipai'),
                // ),
                Expanded(
                    child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.only(
                              left: 30, right: 30, top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              userinfo.data.avatar,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          // alignment: Alignment.topCenter,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                userinfo.data.nickname,
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontFamily: 'haipai'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    ":" + userinfo.data.mobile,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'haipai',),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    ":江苏南京",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: 'haipai',),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
                const SizedBox(
                  height: 10,
                ),

                // Text(
                //   'SCS  - 212',
                //   style: Theme.of(context)
                //       .textTheme
                //       .labelLarge!
                //       .copyWith(fontSize: 18, color: Colors.red),
                // ),
                // const SizedBox(
                //   height: 5,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     const Icon(
                //       Icons.location_on,
                //       size: 16,
                //       color: Colors.grey,
                //     ),
                //     Text(
                //       'Yangshan  North  Street 1,NANJING',
                //       style:
                //           TextStyle(color: Colors.grey.shade600, fontSize: 15),
                //     )
                //   ],
                // ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Stack(
                //   children: [
                //     Container(
                //       padding: const EdgeInsets.symmetric(
                //           vertical: 5, horizontal: 16),
                //       margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                //       decoration: BoxDecoration(
                //           gradient: LinearGradient(
                //             colors: [Config.primarySwatchColor.shade50, Config.primarySwatchColor.shade300],
                //           ),
                //           borderRadius: BorderRadius.circular(30)),
                //       child: Row(
                //         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           IconButton(
                //             onPressed: () {},
                //             icon: const Icon(
                //               // FontAwesomeIcons.user,
                //                 Icons.co2),
                //             color: Colors.white,
                //           ),
                //           IconButton(
                //             onPressed: () {},
                //             icon: const Icon(
                //               Icons.location_on,
                //             ),
                //             color: Colors.white,
                //           ),
                //           const Spacer(),
                //           IconButton(
                //             onPressed: () {},
                //             icon: const Icon(
                //               Icons.add,
                //             ),
                //             color: Colors.white,
                //           ),
                //           IconButton(
                //             onPressed: () {},
                //             icon: const Icon(
                //               Icons.message,
                //             ),
                //             color: Colors.white,
                //           )
                //         ],
                //       ),
                //     ),
                //     Center(
                //       child: FloatingActionButton(
                //         backgroundColor: Colors.white,
                //         onPressed: () {},
                //         child: const Icon(
                //           Icons.favorite,
                //           color: Colors.orange,
                //         ),
                //       ),
                //     ),
                //   ],
                // )
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
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  icon: Icon(Icons.menu))
            ],
          )
        ],
      ),
    );
  }
}
