import 'package:flutter/material.dart';

class OutputRegisterScreen extends StatelessWidget {
  final String name, email, password;
  OutputRegisterScreen(
    {Key? key,
    required this.name,
    required this.email,
    required this.password})
    : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [
            Text("Name : $name"),
            Text("Email : $email"),
            Text("Password : $password"),
          ],
        ),
      );
    }
}