import 'package:flutter/material.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/library/constant.dart';

class ButtonComplete extends StatelessWidget {
  const ButtonComplete({
    super.key,
    required this.nameButtonReorder,
    required this.nameButtonReceipt,
  });

  final String nameButtonReorder;
  final String nameButtonReceipt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ElevatedButton(
              onPressed: () {
                //action when enter button
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor:
                    ConstantColor.colorBackgroundTextButtonCompleted,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                "Reorder",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ElevatedButton(
              onPressed: () {
                // action when enter button
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: Colors.white,
                side: BorderSide(
                  color: ConstantColor.colorBackgroundTextButtonCompleted,
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                "Receipt",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: ConstantColor.colorBackgroundTextButtonCompleted,
                  fontWeight: FontWeight.w600,
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
