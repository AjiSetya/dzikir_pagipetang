import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.info_outline), onPressed: () {}),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Dzikir",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Pagi & Petang",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
//              color: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              height: 250.0,
              child: Stack(
                children: <Widget>[
                  backgroundImage(
                      "https://static.photocdn.pt/images/articles/2017/09/18/articles/2017_8/iStock-179473946-min.jpg"),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Pagi",
                        style: teksWaktuDoa,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  var teksWaktuDoa = TextStyle(
      fontSize: 35.0,
      color: Colors.white,
      fontFamily: 'arial',
      fontWeight: FontWeight.bold);

  Widget backgroundImage(String imageURL) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
              image: NetworkImage(imageURL))),
    );
  }
}
