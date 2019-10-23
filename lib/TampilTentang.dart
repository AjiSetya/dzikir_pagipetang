import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TampilanTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tentang"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Text(
                "﷽",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 70.0),
              ),
              Text(
                "Dzikir yang Dibaca di Waktu Pagi Sesuai Dengan Tuntunan Sunnah Nabi ﷺ",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Dzikir Pagi adalah Dzikir Khusus yang mempunyai keutamaan yang besar bagi sesiapa saja yang mengamalkannya. Pendapat yang kuat mengatakan bahwa amalan Dzikir Pagi ini dilakukan pada waktu antara Shubuh hingga siang hari ketika matahari akan bergeser ke barat. \nDan lebih utama jika diamalkan dekat waktu setelah Shubuh atau jika tidak ada aktifitas lain seusai Dzikir setelah Sholat Subuh atau membaca Al-Qur'an.",
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                  "Sumber\n\nArtikel Kajian\nhttps://artikel-kajian.blogspot.com/2017/03/dzikir-pagi.html"),
            ],
          ),
        ));
  }
}
