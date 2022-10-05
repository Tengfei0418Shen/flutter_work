import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_app/common/my_dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();


}

class _HomePageState extends State<HomePage>  {
  late  Response response;

  myInitState() async {
    // TODO: implement initState
    super.initState();
    response = await get("/share/1");
    print(response);
  }

  @override
  Widget  build(BuildContext context)  {
    // myInitState();
    return Container();
  }
}
