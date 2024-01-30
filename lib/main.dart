import 'package:belajar_flutter/navigator.dart';


import 'package:flutter/material.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Belajar Flutter",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Rahma Ayu Andari"),
//           backgroundColor: Color.fromARGB(255, 157, 180, 223),
//           centerTitle: true,
//         ),
//         body: Container(
//           color: Color.fromARGB(255, 232, 223, 238),
//           child: firstRoute(),
//         ),
//       ),
//     );
//   }
// }

// class belajarHelloWorld extends StatelessWidget {
//   const belajarHelloWorld({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextWidget();
//   }
// }

// class TextWidget extends StatelessWidget {
//   const TextWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "XII RPL 2", 
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           color: Color.fromARGB(255, 243, 63, 123),
//           ),
//           ),
//     );
    
//   }
// }
     void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
    initialRoute: '/',
    routes: {
      '/': (context) => const firstRoute(),
      '/second': (context) => const secondRoute(),
    },
  ));
}

// ignore: camel_case_types
class firstRoute extends StatelessWidget {
  const firstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nextgen Halaman 1'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pergi ke halaman 2'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class secondRoute extends StatelessWidget {
  const secondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nextgen Halaman 2"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali!'),
        ),
      ),
    );
  }
}

