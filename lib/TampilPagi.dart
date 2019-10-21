import 'package:flutter/material.dart';

class TampilanPagi extends StatelessWidget {
  final styleArab = TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0);
  final styleArti =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0, height: 1.5);

  // https://artikel-kajian.blogspot.com/2017/03/dzikir-pagi.html

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dzikir Pagi"),
      ),
      body: PageView(
        children: <Widget>[
          pagiItem(
            "أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
            "\“Aku berlindung kepada Allah dari godaan syaitan yang terkutuk/yang kena rajam.\”",
          ),
          pagiItem(
            "اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ، لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ، لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ، مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ، يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ، وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ، وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ، وَلَا يَئُودُهُ حِفْظُهُمَا، وَهُوَ الْعَلِيُّ الْعَظِيمُِ",
            "\“Allah, tidak ada ilah (yang berhak disembah) melainkan Dia, yang hidup kekal lagi terus menerus mengurus (makhluk-Nya). Dia tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa’at di sisi-Nya tanpa seizin-Nya. Dia mengetahui apa-apa yang di hadapan mereka dan di belakang mereka. Mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dia tidak merasa berat memelihara keduanya. Dan Dia Maha Tinggi lagi Maha besar.\” (QS. Al Baqarah: 255) [Dibaca 1x]\n\nFaedah: Siapa yang membacanya ketika petang, maka ia akan dilindungi (oleh Allah dari berbagai gangguan) hingga pagi. Siapa yang membacanya ketika pagi, maka ia akan dilindungi hingga petang.[1]\n\n[1] HR. Al Hakim (1: 562). Syaikh Al Albani menshahihkan hadits tersebut dalam Shahih At Targhib wa At Tarhib no. 655.",
          ),
          pagiItem(
              "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ" +
                  "\n\n"
                      "قُلْ هُوَ اللَّهُ أَحَدٌ" +
                  "\n"
                      "اللَّهُ الصَّمَدُ" +
                  "\n"
                      "لَمْ يَلِدْ وَلَمْ يُولَدْ" +
                  "\n"
                      "وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ",
              "\“Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang.\n\nKatakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.” (QS. Al Ikhlas: 1-4) [Dibaca 3 x]")
        ],
      ),
    );
  }

  Widget pagiItem(String arab, String arti) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
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
