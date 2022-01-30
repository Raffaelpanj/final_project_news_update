import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_update/UI/NewsDetailScreen.dart';

class NewsScrn extends StatefulWidget {
  @override
  _NewsScrnState createState() => _NewsScrnState();
}

class _NewsScrnState extends State<NewsScrn> {
  List _save = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Column(
          children: [
            Text('Hot News', style: TextStyle(color: Colors.white)),
          ],
        ),
        backgroundColor: Color(0xff13294b),
      ),
      body: ListView.builder(
        itemCount: _save.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              color: Colors.grey[200],
              height: 100,
              width: 100,
              child: _save[index]['urlToImage'] != null
                  ? Image.network(
                      _save[index]['urlToImage'],
                      width: 100,
                      fit: BoxFit.cover,
                    )
                  : Center(),
            ),
            title: Text('${_save[index]['title']}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Color(0xffe54c37))),
            subtitle: Text(
              '${_save[index]['description']}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              Get.to(() => NewsDetailScrn(), arguments: [
                _save[index]['url'],
                _save[index]['title'],
                _save[index]['content'],
                _save[index]['urlToImage'],
                _save[index]['author'],
                _save[index]['publishedAt']
              ]);
            },
          );
        },
      ),
    );
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=61af9d5b707f4bd39537b7652e0f4d9b"));
      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _save = data['articles'];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
