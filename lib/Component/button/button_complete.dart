import 'package:flutter/material.dart';

class ButtonComplete extends StatelessWidget {
  const ButtonComplete({
    super.key,
    required this.buttonReorder,
    required this.buttonReceipt,
  });

  final String buttonReorder;
  final String buttonReceipt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: Color(0xFF0088BF),
                padding: const EdgeInsets.all(22),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                buttonReorder,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(22),
                side: BorderSide(color: Color(0xFF0088BF), width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                buttonReceipt,
                style: TextStyle(
                  color: Color(0xFF0088BF),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
