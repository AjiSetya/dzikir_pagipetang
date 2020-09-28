import 'package:dzikir_pagi_petang/ui/widget/card_menu.dart';
import 'package:dzikir_pagi_petang/utils/helper.dart';
import 'package:flutter/material.dart';

import 'dzikirpagi_page.dart';
import 'dzikirpetang_page.dart';
import 'tentang_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                openNewSreen(context, TampilanTentang());
              }),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CardMenu(
                      onTapAction: () {
                        openNewSreen(context, TampilanPagi());
                      },
                      imgUrl:
                      "https://img.etimg.com/thumb/msid-66951054,width-643,imgsize-920116,resizemode-4/sunrise.jpg",
                      judul: "Pagi"),
                  CardMenu(
                      onTapAction: () {
                        openNewSreen(context, TampilanPetang());
                      },
                      imgUrl:
                          "http://viemagazine.com/wp-content/uploads/2016/01/vie-magazine-florida-sunsets.jpg",
                      judul: "Petang")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
