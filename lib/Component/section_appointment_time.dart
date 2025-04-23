import 'package:flutter/cupertino.dart';
import 'package:test1/component/address.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/l10n/app_localizations_en.dart';
import 'package:test1/library/constant.dart';
import 'package:test1/library/constant_format_currency.dart';
import 'package:test1/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionAppointmentTime extends StatelessWidget {
  const SectionAppointmentTime({
    super.key,
    required this.appointmentTime,
    required this.typeVehicle,
  });

  final String appointmentTime;
  final String typeVehicle;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return Padding(
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
                  appointmentTime,
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
                  typeVehicle,
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
    );
  }
}
