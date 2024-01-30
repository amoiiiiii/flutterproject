import 'package:flutter/material.dart';

class LatihanRow extends StatelessWidget {
  
  @override
  Widget build(BuildContext) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueGrey, Colors.black26]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Container(
            height: 100,
            width: 350,
            color: Colors.grey,
            child: Text("Nama: Rahma Ayu A"),
          ),
           
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [FlutterLogo(size: 200,), FlutterLogo(size: 200,)],
          ),
         
          Container(
            height: 100,
            width: 250,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/4/41/Profile-720.png",
                fit: BoxFit.cover,
               ),
                Container(
                  color: Colors.white,
                  child: Text("Nama: Amoooi"),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: 250,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 100,
                ),
                Container(
                  color: Colors.white,
                  child: Text("Kelas: XII RPL 2"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}