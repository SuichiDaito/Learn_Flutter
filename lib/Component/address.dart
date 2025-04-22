import 'package:flutter/material.dart';
import 'package:test1/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/library/constant.dart';

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
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/image/departureicon.svg',
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
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Container(
              width: 2,
              height: 15,
              color: ConstantColor.colorLineContainer,
            ),
          ),
          SizedBox(
            height: 35,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/image/point.svg',
                  width: 25,
                  height: 25,
                  color: ConstantColor.colorIconDestination,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    destination,
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
        ],
      ),
    );
  }
}
