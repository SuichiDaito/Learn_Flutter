import 'package:flutter/material.dart';
import 'package:test1/component/address.dart';
import 'package:test1/component/button/button_complete.dart';
import 'package:test1/component/button/button_searching.dart';
import 'package:test1/component/title_container.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/library/check_state.dart';
import 'package:test1/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/library/constant.dart';
import 'package:test1/library/constant_format_currency.dart';

class CardOrder extends StatefulWidget {
  const CardOrder({
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
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  late String id;
  late String state;
  late String departure;
  late String destination;

  @override
  void initState() {
    super.initState();
    id = widget.id;
    state = widget.state;
    departure = widget.departure;
    destination = widget.destination;
  }

  CheckState check = CheckState();

  Widget checkStateButton(String state) {
    if (state == "Searching") {
      return ButtonSearching(nameButton: "Tip driver");
    } else if (state == "Active") {
      return ButtonSearching(nameButton: "Driver Info");
    } else if (state == "Completed") {
      return ButtonComplete(
        nameButtonReorder: "Reorder",
        nameButtonReceipt: "Receipt",
      );
    }
    return ButtonSearching(nameButton: "Driver info");
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return SizedBox(
      height: 320,
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
                    id,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: ConstantColor.colorTextLabelOrderList,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: TitleContainer(
                      title: check.checkTextStateKorean(widget.state),
                      color:
                          check.checkColorTextStateKorean(widget.state)
                              as Color,
                      colorText: ConstantColor.colorTextPrimary,
                    ),
                  ),
                  TitleContainer(
                    title: state,
                    color: check.checkColorBackground(widget.state) as Color,
                    colorText: check.checkColorText(widget.state) as Color,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/image/credit-card.svg',
                          width: 20,
                          height: 20,
                          color: ConstantColor.colorIconPaymentMethod,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            ConstantFormat.formatCurrency(34000),
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
                                  localization.date_order,
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: ConstantColor.colorIconPaymentMethod,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "30/12/2025, 12:00 p.m",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: ConstantColor.colorNeutral1,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
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
                                  localization.vehicle,
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: ConstantColor.colorIconPaymentMethod,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  localization.type_vehicle,
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    color: Color(0xFF313F46),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Address(departure: departure, destination: destination),
                    const SizedBox(height: 14),
                    checkStateButton(widget.state),
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
