import 'package:dzikir_pagi_petang/ui/shared/text_style.dart';
import 'package:flutter/material.dart';

import 'background_image.dart';

class CardMenu extends StatelessWidget {
  final Function onTapAction;
  final String imgUrl;
  final String judul;

  CardMenu(
      {@required this.onTapAction,
      @required this.imgUrl,
      @required this.judul});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        height: 200.0,
        child: Stack(
          children: <Widget>[
            BackgroundImage(imgUrl),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  judul,
                  style: teksWaktuDoa,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
