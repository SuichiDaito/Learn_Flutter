import 'package:flutter/material.dart';
import 'package:test1/Library/constant.dart';
import 'package:test1/component/address.dart';
import 'package:test1/component/title_container.dart';
import 'package:test1/library/check_state.dart';

class Detail extends StatelessWidget {
  const Detail({
    super.key,
    required this.id,
    required this.state,
    required this.departure,
    required this.destination,
  });

  final String id;
  final String state;
  final String departure;
  final String destination;

  @override
  Widget build(BuildContext context) {
    final check = CheckState();
    return Scaffold(
      backgroundColor: ConstantColor.colorNeutral4,
      appBar: AppBar(
        title: Text("Detail Screen"),
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(Icons.arrow_back, color: ConstantColor.colorNeutral1),
          onTap: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "${id}",
                      style: TextStyle(
                        color: ConstantColor.colorNeutral1,
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      child: TitleContainer(
                        title: check.checkTextStateKorean(state),
                        color: check.checkColorTextStateKorean(state) as Color,
                        colorText: ConstantColor.colorTextPrimary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TitleContainer(
                        title: state,
                        color: check.checkColorBackground(state) as Color,
                        colorText: check.checkColorText(state) as Color,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 9.0,
                  vertical: 5.0,
                ),
                child: Address(departure: departure, destination: destination),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
