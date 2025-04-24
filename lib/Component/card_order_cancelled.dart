import 'package:flutter/material.dart';
import 'package:test1/component/address.dart';
import 'package:test1/component/title_container.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/library/check_state.dart';
import 'package:test1/library/constant_lib.dart';

class CardOrderCancelled extends StatefulWidget {
  const CardOrderCancelled({
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
  State<CardOrderCancelled> createState() => _CardOrderCancelledState();
}

class _CardOrderCancelledState extends State<CardOrderCancelled> {
  CheckState check = CheckState();

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.id,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: ConstantColor.colorNeutral1,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: TitleContainer(
                      title: localization.state_korean_cancelled,
                      color:
                          check.checkColorTextStateKorean(widget.state)
                              as Color,
                      colorText: ConstantColor.colorTextPrimary,
                    ),
                  ),
                  TitleContainer(
                    title: widget.state,
                    color: check.checkColorBackground(widget.state) as Color,
                    colorText: check.checkColorText(widget.state) as Color,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
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
                    Address(
                      departure: widget.departure,
                      destination: widget.destination,
                    ),
                    const SizedBox(height: 14),
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
