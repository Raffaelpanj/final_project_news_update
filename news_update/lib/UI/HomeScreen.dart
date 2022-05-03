import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_update/UI/NewsScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var name = Get.arguments;
    String convName = name;
    var end = convName.indexOf("@");
    String fixName = convName.substring(0, end);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.symmetric(vertical: 60.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(
                  "assets/images/earth.png",
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(
                width: 1.0,
              ),
              Text(
                "Welcome, $fixName",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff13294b)),
              ),
              Text(
                " Update",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffe54c37)),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          SizedBox(
            height: 60,
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Search News",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Cuaca Hari ini",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xffe54c37)),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            padding: EdgeInsets.only(left: 35.0),
            height: 160.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 110.0,
                  // color: Color(0xffededed),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Jakarta",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        width: 100,
                        height: 70,
                        child: (Image.asset("assets/images/sun.png")),
                      ),
                      Text("33°",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text("Cerah",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17))
                    ],
                  ),
                ),
                Container(
                  width: 110.0,
                  // color: Color(0xffededed),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Medan",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        width: 100,
                        height: 70,
                        child: (Image.asset("assets/images/cloud.png")),
                      ),
                      Text("29°",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text("Berawan",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17))
                    ],
                  ),
                ),
                Container(
                  width: 110.0,
                  // color: Color(0xffededed),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Bandung",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        width: 100,
                        height: 70,
                        child: (Image.asset("assets/images/cloud.png")),
                      ),
                      Text("30°",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text("Berawan",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17))
                    ],
                  ),
                ),
                Container(
                  width: 110.0,
                  // color: Color(0xffededed),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Maluku",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        width: 100,
                        height: 70,
                        child: (Image.asset("assets/images/sun.png")),
                      ),
                      Text("32°",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text("Cerah",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17))
                    ],
                  ),
                ),
                Container(
                  width: 110.0,
                  // color: Color(0xffededed),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Tangerang",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        width: 100,
                        height: 70,
                        child: (Image.asset("assets/images/rainy.png")),
                      ),
                      Text("25°",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text("Hujan",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17))
                    ],
                  ),
                ),
                Container(
                  width: 110.0,
                  // color: Color(0xffededed),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Jogja",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        width: 100,
                        height: 70,
                        child: (Image.asset("assets/images/cloud.png")),
                      ),
                      Text("28°",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text("Berawan",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17))
                    ],
                  ),
                ),
                Container(
                  width: 110.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.0,
                      ),
                      Text("Malang",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20)),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        width: 100,
                        height: 70,
                        child: (Image.asset("assets/images/sun.png")),
                      ),
                      Text("28°",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13)),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text("Cerah",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 17))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Hot Topic",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xffe54c37)),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              width: 15,
            ),
            Container(
              // color: Colors.grey,
              child: SizedBox(
                height: 90,
                width: 90,
                child: (Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: (IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/ball.png"))),
                    ),
                    SizedBox(
                      width: 90,
                      height: 20,
                      child: (Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sport",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15))
                        ],
                      )),
                    )
                  ],
                )),
              ),
            ),
            Container(
              // color: Colors.grey,
              child: SizedBox(
                height: 90,
                width: 90,
                child: (Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 90,
                      height: 70,
                      child: (IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/car.png"))),
                    ),
                    SizedBox(
                      width: 90,
                      height: 20,
                      child: (Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Automotif",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15))
                        ],
                      )),
                    )
                  ],
                )),
              ),
            ),
            Container(
              // color: Colors.grey,
              child: SizedBox(
                height: 90,
                width: 90,
                child: (Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: (IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/book.png"))),
                    ),
                    SizedBox(
                      width: 90,
                      height: 20,
                      child: (Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Education",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15))
                        ],
                      )),
                    )
                  ],
                )),
              ),
            ),
            Container(
              // color: Colors.grey,
              child: SizedBox(
                height: 90,
                width: 90,
                child: (Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 65,
                      child: (IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/icons/burger.png"))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 90,
                      height: 20,
                      child: (Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Food",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15))
                        ],
                      )),
                    )
                  ],
                )),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Hot News",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xffe54c37)),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextButton(
                      onPressed: () {
                        Get.to(NewsScrn());
                      },
                      child: Text("More News.."))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              SizedBox(
                width: 80,
                height: 60,
                child: (Image.network(
                    "https://cdn.cnn.com/cnnnext/dam/assets/220128133152-kayla-berridge-super-tease.jpg")),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 260,
                height: 60,
                child: (Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mail began to pile up at a home...",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    Text(
                      "A New Hampshire postal worker is now a local hero after she helped save a woman's life.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              SizedBox(
                width: 80,
                height: 60,
                child: (Image.network(
                    "https://static01.nyt.com/images/2022/01/28/lens/28xp-earplugs-01/28xp-earplugs-01-facebookJumbo-v2.jpg")),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 260,
                height: 60,
                child: (Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Two Army Veterans Awarded...",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    Text(
                      "Nearly 300,000 people are involved in lawsuits accusing 3M of having sold the military",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              SizedBox(
                width: 80,
                height: 60,
                child: (Image.network(
                    "https://image.cnbcfm.com/api/v1/image/107008011-1643378952691-gettyimages-1231057942-UK_LYNCH.jpeg?v=1643381081")),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 260,
                height: 60,
                child: (Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Britain approves extradition of...",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    Text(
                      "Earlier Friday, a British judge ruled in favor of HP in a civil case against Lynch.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
