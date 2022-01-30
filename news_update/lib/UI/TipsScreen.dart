import 'package:flutter/material.dart';

class TipsScrn extends StatefulWidget {
  const TipsScrn({Key? key}) : super(key: key);

  @override
  _TipsScrnState createState() => _TipsScrnState();
}

class _TipsScrnState extends State<TipsScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Tips menghindari hoax",
                style: TextStyle(color: Colors.white))),
        backgroundColor: Color(0xff13294b),
      ),
      body: ListView(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/xhoax1.png"),
                  ),
                  title: Text(
                    "Kembangkan rasa penasaranmu setiap saat, jangan langsung menyebarkan suatu berita tanpa mengecek kebenarannya",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/xhoax2.png"),
                  ),
                  title: Text(
                    "Berhati-hatilah dengan judul yang sangat provokatif",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/xhoax3.png"),
                  ),
                  title: Text(
                    "Cari tahu keaslian alamat situs laman dan website berita",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/xhoax4.png"),
                  ),
                  title: Text(
                    "Perhatian keaslian foto yang ditampilkan berita",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/xhoax5.png"),
                  ),
                  title: Text(
                    "Periksa keaslian berita dengan mencari tahu asal sumbernya melalui berbagai media",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/xhoax6.png"),
                  ),
                  title: Text(
                    "Ikut serta dalam grup diskusi atau komunitas antihoax di media sosial",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/images/xhoax7.png"),
                  ),
                  title: Text(
                    "Segera adukan kepada Kementerian Komunikasi dan Informatika apabila menemukan berita hoax yang tersebar",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
