import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:local_cache_sync/local_cache_sync.dart';

import '../common/local_cache.dart';
import '../common/my_dio.dart';
import '../models/ResponseDart.dart';
import '../styles/colors.dart';
import '../styles/text_styles.dart';
import 'index_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController =
        new TextEditingController(text: "13951905171");

    TextEditingController passwordController =
        new TextEditingController(text: "123123");
    Response response;

    ResponseDart responsedart;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(248, 147, 200, 0.7019607843137254),
      body: Container(
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/login_bannar.png",
                        ),
                        fit: BoxFit.cover),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(300))),
              ),
              Center(
                child: Text(
                  "登录页面",
                  style: TextStyle(
                      fontSize: 30, fontFamily: "haipai", color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  style: whiteText,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Username",
                      style: TextStyle(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: borderColor, // 边框颜色
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  cursorColor: Colors.white,
                  style: whiteText,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Password",
                      style: TextStyle(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: borderColor, // 边框颜色
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      // border: Border(
                      //     top: BorderSide(color: Color.fromRGBO(8, 81, 91, 1.0),width: 2),
                      //     bottom: BorderSide(color: Color.fromRGBO(
                      //         210, 31, 85, 1.0),width: 2),
                      //     left: BorderSide(color: Color.fromRGBO(81, 99, 159, 1.0),width: 2),
                      //     right: BorderSide(color: Color.fromRGBO(8, 81, 91, 1.0),width: 2),
                      //
                      // ),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(206, 203, 218, 0.6),
                            Color.fromRGBO(206, 203, 218, 0.6),
                          ]),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: MaterialButton(
                    onPressed: () async {
                      var data = jsonEncode(<String, String>{
                        'mobile': usernameController.value.text,
                        'password': passwordController.value.text,
                      });
                      try{
                        response = await login(data);
                        responsedart = ResponseDart.fromJson(
                            json.decode(response.toString()));
                        if (responsedart.code == 1) {
                          LocalCacheSync.userDefault.setWithKey<Map>(
                              'loginUser', responsedart.toJson());
                          Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context) {
                                return IndexPage();
                              }));
                        } else {
                          showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: Text(
                                  "登录失败",
                                ),
                                content: Text(
                                  responsedart.msg,
                                ),
                              );
                            },
                          );
                        }
                      }catch(e){
                        showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              title: Text(
                                "链接服务器失败",
                              ),
                              content: Text(
                                "当前网络环境不好，请切换网络再重试",
                              ),
                            );
                          },
                        );
                      }



                    },
                    // padding: EdgeInsets.all(20),
                    child: const Text(
                      "登录",
                      style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'haipai'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
