import 'package:belajar_flutter/screens/detail_flora_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListFloraScreen extends StatelessWidget {
  final List<Map<String, dynamic>> floraData = [
    {
      "nama": "bunga",
      "asal": "zzzz",
      "image": "assets/img/flora1.jpg",
      "desc": "jjjjj",
    },
    {
      "nama": "bunga",
      "asal": "zzzz",
      "image": "assets/img/flora2.jpg",
      "desc": "jjjjj",
    },
    {
      "nama": "bunga",
      "asal": "zzzz",
      "image": "assets/img/flora3.webp",
      "desc": "jjjjj",
    },
    {
      "nama": "Rafflesia",
      "asal": "Provinsi Bengkulu",
      "image": "assets/img/flo4.webp",
      "desc": "Rafflesia arnoldii merupakan salah satu flora langka di Indonesia yang berasal dari Provinsi Bengkulu. Bunga ini memiliki aroma bau busuk yang khas yang berguna dalam proses penyerbukan. Selain langka, ternyata bunga ini termasuk bunga terbesar di dunia lho detikers.",
    },
    {
      "nama": "bunga",
      "asal": "zzzz",
      "image": "assets/img/flo5.jpg",
      "desc": "jjjjj",
    },
    {
      "nama": "bunga",
      "asal": "zzzz",
      "image": "assets/img/flo6.jpg",
      "desc": "jjjjj",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/backround.jpg"),
            fit: BoxFit.cover),
          ),
          child: ListView.builder(
            itemCount: floraData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFloraScreen(
                        nama: floraData[index]["nama"],
                        asal: floraData[index]["asal"],
                        image: floraData[index]["image"],
                        desc: floraData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment:Alignment.bottomLeft,
                  height: displayHeight(context) * 0.25,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${floraData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    "${floraData[index]["nama"]} - ${floraData[index]["asal"]} - ${floraData[index]["image"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   ),
              );
            },
          ),
        ),
    );
  }
}