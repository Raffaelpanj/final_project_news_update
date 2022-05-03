import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsDetailScrn extends StatelessWidget {
  var trm = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff13294b),
        title: new Center(
          child: Text(
            "Detail Hot News",
            style: TextStyle(color: Colors.white),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          trm[3] != null
              ? Image.network(trm[3])
              : Container(
                  margin: EdgeInsets.all(20),
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey),
                ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${trm[1]}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Publish at : ${trm[5]}',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Color(0xffe54c37)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('${trm[2].toString()}'),
                Divider(),
                Text('${trm[4]}'),
                Text('${trm[0]}'),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        backgroundColor: Color(0xff13294b),
        onPressed: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
