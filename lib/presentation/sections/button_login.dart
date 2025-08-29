import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final String nameButton;

  const ButtonLogin({required this.nameButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.0,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          //action when press button
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(5),
          side: BorderSide(color: Colors.blue, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        child: Text(
          nameButton,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
