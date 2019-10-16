import 'package:flutter/material.dart';

void main() => runApp(new myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ilmuwan muslim",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ilmuwan Muslim"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Avicenna_Portrait_on_Silver_Vase_-_Museum_at_BuAli_Sina_%28Avicenna%29_Mausoleum_-_Hamadan_-_Western_Iran_%287423560860%29.jpg/440px-Avicenna_Portrait_on_Silver_Vase_-_Museum_at_BuAli_Sina_%28Avicenna%29_Mausoleum_-_Hamadan_-_Western_Iran_%287423560860%29.jpg",
            "Ibnu Sina",
            "Ibnu Sina (980-1037) dikenal juga sebagai Avicenna di dunia Barat adalah seorang filsuf, ilmuwan, dan dokter kelahiran Persia (sekarang Iran). Ia juga seorang penulis yang produktif yang sebagian besar karyanya adalah tentang filosofi dan kedokteran. Bagi banyak orang, dia adalah Bapak Kedokteran Modern. Karyanya yang sangat terkenal adalah al-Qānūn fī aṭ-Ṭibb yang merupakan rujukan di bidang kedokteran selama berabad-abad.",
          ),
          _createPageItemUI(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg/440px-033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg",
            "Umar Khayyām",
            "Umar Khayyām (18 Mei 1048 – 4 Desember 1131, dalam bahasa Persia عمر خیام), dilahirkan di Nishapur, Iran. Nama aslinya adalah Ghiyātsuddin Abulfatah 'Umar bin Ibrahim Khayyāmi Nisyābūri (غياث الدين ابو الفتح عمر بن ابراهيم خيام نيشابوري). Khayyām berarti pembuat tenda dalam bahasa Persia.",
          ),
          _createPageItemUI(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Avempace.jpg/440px-Avempace.jpg",
            "Ibnu Bajjah",
            "Ibnu Bajjah (ابن باجة) atau lengkapnya Abu Bakar Muhammad bin Yahya bin ash-Shayigh at-Tujibi bin Bajjah (أبو بكر محمد بن يحيى بن الصايغ) adalah seorang astronom, filsuf, musisi, dokter, fisikawan, psikolog, botanis, sastrawan, dan ilmuwan Muslim Andalusia yang dikenal di Barat dengan nama Latinnya, Avempace. Ia lahir di Zaragoza, tempat yang kini bernama Spanyol, dan meninggal di Fez pada 1138.",
          ),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String urlGambar, String nama, String deskripsi) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 0.5,
          ),
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(urlGambar),
            height: 300.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              nama,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              deskripsi,
              style: TextStyle(fontSize: 15.0),
            ),
          )
        ],
      ),
    );
  }
}
