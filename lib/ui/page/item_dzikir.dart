import 'package:dzikir_pagi_petang/ui/shared/text_style.dart';
import 'package:flutter/material.dart';

class ItemDzikir extends StatelessWidget {
  String judul;
  String arab;
  String arti;

  ItemDzikir(this.judul, this.arab, this.arti);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
          child: Text(
            judul,
            style: styleJudul,
          ),
        ),
        Divider(
          thickness: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          child: Text(
            arab,
            style: styleArab,
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            arti,
            style: styleArti,
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}
