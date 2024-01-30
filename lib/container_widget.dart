import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        gradient: RadialGradient(
          colors: [Colors.black87, const Color.fromARGB(255, 90, 61, 168), Color.fromARGB(255, 236, 99, 145)],
           ),
           borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        gradient: RadialGradient(
          colors: [Colors.black87, Colors.deepPurpleAccent, Color.fromARGB(255, 231, 77, 128)],
           ),
           borderRadius: BorderRadius.circular(10),
           border: Border.all(color: Colors.black, width: 3)
           ),
            child: Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        gradient: RadialGradient(
          colors: [Colors.black87, Colors.deepPurpleAccent, Color.fromARGB(255, 230, 117, 154)],
           ),
           borderRadius: BorderRadius.circular(10),
           border: Border.all(color: Colors.black, width: 3)
           ),
            child: Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        gradient: RadialGradient(
          colors: [Colors.black87, const Color.fromARGB(255, 124, 100, 190), Color.fromARGB(255, 214, 53, 107)],
           ),
           borderRadius: BorderRadius.circular(10),
           border: Border.all(color: Colors.black, width: 3)
           ),
    
      
      
      child: belajarHelloWorld(),
      ),
      ),
      ),
    ); //container
  }
}