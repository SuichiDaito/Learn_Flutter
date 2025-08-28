import 'package:flutter/material.dart';
import 'package:test1/presentation/sections/address.dart';
import 'package:test1/presentation/sections/button_complete.dart';
import 'package:test1/presentation/sections/button_searching.dart';
import 'package:test1/presentation/sections/section_appointment_time.dart';
import 'package:test1/presentation/sections/title_container.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/library/check_state.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/library/constant_lib.dart';
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
                          colorFilter: ColorFilter.mode(
                            ConstantColor.colorIconPaymentMethod,
                            BlendMode.srcIn,
                          ),
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
                    SectionAppointmentTime(
                      appointmentTime: "30/12/2025 12:00 PM",
                      typeVehicle: localization.type_vehicle,
                    ),
                    const SizedBox(height: 3.0),
                    Address(departure: departure, destination: destination),
                    const SizedBox(height: 10.0),
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
