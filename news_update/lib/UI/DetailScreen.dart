import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDetail extends StatefulWidget {
  const HomeDetail({Key? key}) : super(key: key);

  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
    );
  }
}
