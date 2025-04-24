import 'package:flutter/material.dart';
import 'package:test1/library/constant_lib.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class Address extends StatelessWidget {
  const Address({
    super.key,
    required this.departure,
    required this.destination,
  });

  final String departure;
  final String destination;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/image/departure_icon.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    departure,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      color: ConstantColor.colorNeutral1,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Container(
              width: 2,
              height: 15,
              color: ConstantColor.colorLineContainer,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/image/point.svg',
                width: 25,
                height: 25,
                colorFilter:
                    ConstantColor.colorIconPaymentMethod as ColorFilter,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  destination,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    color: ConstantColor.colorNeutral1,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
