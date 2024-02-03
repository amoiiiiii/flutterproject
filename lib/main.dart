import 'package:belajar_flutter/gridview/grid_count.dart';
import 'package:belajar_flutter/gridview/latihan-grid.dart';
import 'package:belajar_flutter/navigator.dart';
import 'package:belajar_flutter/screens/booking.dart';
import 'package:belajar_flutter/screens/detail_flora_screen.dart';
import 'package:belajar_flutter/screens/flora_screen.dart';
import 'package:belajar_flutter/screens/form_screen.dart';
import 'package:belajar_flutter/screens/home_screens.dart';
import 'package:belajar_flutter/screens/login_screen.dart';
import 'package:belajar_flutter/screens/output_login.dart';
import 'package:belajar_flutter/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      home: CheckAuth(),
    );
  }
}

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      if (mounted) {
        setState(() {
          isAuth = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = BottomNavigationMenu();
    } else {
      child = LoginScreen();
    }

    return Scaffold(
      body: child,
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
    ListFloraScreen(),
    LoginScreen(),
    RegisterScreen()
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "Wisata"),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: "Beli Tiket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Profil"),
        ],
      ),
    );
  }
}