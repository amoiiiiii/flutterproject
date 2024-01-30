import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  const LatihanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.black, Color.fromARGB(255, 255, 68, 183)]),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 64, 144),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              children: [
               Image.asset("assets/img/blk.jpg"),
               Image.asset("assets/img/bp.jpg"),
               Image.asset("assets/img/bp2.jpg"),
               Image.asset("assets/img/bp3.jpeg"),
               Image.asset("assets/img/bp4.jpg"),
               Image.asset("assets/img/bp5.jpg"),
               Image.asset("assets/img/bp6.jpeg"),
               Image.asset("assets/img/bp7.png"),
      
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 64, 128),
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
                       Image.asset('assets/img/bp.jpg', fit: BoxFit.cover,
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
                       Image.asset('assets/img/bp3.jpeg', fit: BoxFit.cover,
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
                       Image.asset('assets/img/bp.jpg', fit: BoxFit.cover,
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
                       Image.asset('assets/img/bp3.jpeg', fit: BoxFit.cover,
                       )
                    ],
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
              color: const Color.fromARGB(255, 255, 64, 128),
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
                       Image.asset('assets/img/bp3.jpeg', fit: BoxFit.cover,
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
                       Image.asset('assets/img/bp.jpg', fit: BoxFit.cover,
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
                       Image.asset('assets/img/bp.jpg', fit: BoxFit.cover,
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
                       Image.asset('assets/img/bp3.jpeg', fit: BoxFit.cover,
                       )
                    ],
                    ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}