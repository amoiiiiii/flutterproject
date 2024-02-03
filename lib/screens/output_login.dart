import 'package:flutter/material.dart';

class OutputLoginScreen extends StatelessWidget {
  final String email, password;
  OutputLoginScreen(
    {Key? key,
    required this.email,
    required this.password,})
    : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [
            Text("Email : $email"),
            Text("Password : $password"),
          ],
        ),
      );
    }
}