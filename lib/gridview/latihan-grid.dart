import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  const LatihanGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.transparent, Color.fromARGB(255, 64, 153, 255)]),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 64, 124, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              children: [
               Image.asset("assets/img/ui1.jpg"),
               Image.asset("assets/img/ui2.jpg"),
               Image.asset("assets/img/ui3.jpg"),
               Image.asset("assets/img/ui4.jpg"),
               Image.asset("assets/img/ui5.jpg"),
      
              ],
            ),
          ),
          Container(
            height: 100,
            width: 300,
           
            child: ListView(
            
              children: [
                 
                Container(
                  
                  child: Container(
                    height: 500,
                    width: 200,
                    child: Text(
                      "Upin & Ipin adalah sebuah serial televisi animasi kartun anak-anak Malaysia yang dirilis pada tanggal 14 September 2007 yang ditayangkan di TV9, RTM2, MNCTV dan Kids TV. Serial ini yang diproduksi oleh Les' Copaque Production. Upin Ipin sendiri merupakan serial animasi tentang dua anak kembar yatim piatu bernama Upin dan Ipin. Mereka tinggal bersama sang nenek (Opah) dan kakak perempuannya (Kak Ros) di Kampung Durian Runtuh. Cerita Upin Ipin berkutat seputar keseharian mereka mulai dari bersekolah hingga bermain bersama teman-temannya",
                    style: TextStyle(),
                    textAlign: TextAlign.justify,
                    
                    ),
                  ),
                )
              ],
            ),
          ),
          
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 64, 153, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  child: Row(
                    children: [
                       Image.asset('assets/img/ui6.jpg', fit: BoxFit.cover,
                       )
                    ],
                    ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  child: Row(
                    children: [
                       Image.asset('assets/img/ui7.jpg', fit: BoxFit.cover,
                       )
                    ],
                    ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  child: Row(
                    children: [
                       Image.asset('assets/img/ui8.jpg', fit: BoxFit.cover,
                       )
                    ],
                    ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  child: Row(
                    children: [
                       Image.asset('assets/img/ui9.jpg', fit: BoxFit.cover,
                       )
                    ],
                    ),
                )
                
              ],
            ),
          ),
         Text(
            "Galeri",
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 300,
            height: 300,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                  margin: EdgeInsets.all(8),
                  child:Image.asset('assets/img/ui6.jpg', fit: BoxFit.cover,)
                );
              },
            ),
          )
         
       
        ],
      ),
    );
    
  }
}