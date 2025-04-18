import 'package:flutter/material.dart';
import 'package:test1/component/button/button_complete.dart';
import 'package:test1/component/button/button_searching.dart';
import 'package:test1/library/check_state_color.dart';
import 'package:test1/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardOrder extends StatefulWidget {
  const CardOrder({
    super.key,
    required this.id,
    required this.state,
    required this.stateKorean,
  });

  final String id;
  final String state;
  final String stateKorean;

  @override
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  CheckColorState check = CheckColorState();

  Widget checkStateButton(String state) {
    if (state == "Searching") {
      return ButtonSearching(nameButton: "Driver info");
    } else if (state == "Active") {
      return ButtonSearching(nameButton: "Tip driver");
    } else if (state == "Completed") {
      return ButtonComplete(buttonReorder: "Reorder", buttonReceipt: "Receipt");
    } else {
      return ButtonSearching(nameButton: "Driver info");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.id,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color(0xFF313F46),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor:
                            check.checkColorTextStateKorean(widget.state)
                                as Color,
                        padding: const EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Text(
                        widget.stateKorean,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      backgroundColor:
                          check.checkColorBackground(widget.state) as Color,
                      padding: const EdgeInsets.all(14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Text(
                      widget.state,
                      style: TextStyle(
                        color: check.checkColorText(widget.state) as Color,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/image/credit-card.svg',
                          width: 20,
                          height: 20,
                          color: Color(0xFFAEAEAE),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "W34,000",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              decoration: TextDecoration.none,
                              color: Color(0xFF313F46),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Date order",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: Color(0xFFAEAEAE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "30/12/2025, 12:00 p.m",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: Color(0xFF313F46),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Vehicle",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: Color(0xFFAEAEAE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "1 ton truck",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: Color(0xFF313F46),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SvgPicture.asset(
                                  'assets/image/departureicon.svg',
                                  width: 24,
                                  height: 24,
                                ),
                                Container(
                                  height: 20,
                                  child: VerticalDivider(
                                    color: Color(0xFFDEDEDE),
                                    thickness: 1,
                                    width: 12,
                                  ),
                                ),

                                SvgPicture.asset(
                                  'assets/image/point.svg',
                                  width: 25,
                                  height: 25,
                                  color: Color(0xFFEA5265),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: SizedBox(
                              height: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Road A, Street B, Province C, City D",
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Road A, Street B, Province C, City Df",
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: checkStateButton(widget.state),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
