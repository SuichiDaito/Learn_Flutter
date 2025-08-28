import 'package:flutter/material.dart';

class ButtonSearching extends StatelessWidget {
  const ButtonSearching({super.key, required this.nameButton});

  final String nameButton;

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
          backgroundColor: Color(0xFF0088BF),
          padding: const EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        child: Text(
          nameButton,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
