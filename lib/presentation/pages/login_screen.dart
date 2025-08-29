import 'package:flutter_svg/svg.dart';
import 'package:test1/presentation/sections/button_login.dart';

import '../../gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: SizedBox(height: 50, width: 50, child: Text("image")),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("Hi\nWhat would you like send today?"),
            ),
            ButtonLogin(nameButton: "Login"),
          ],
        ),
      ),
    );
  }
}
