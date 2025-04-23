import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/Component/detail.dart';
import 'package:test1/component/button_complete.dart';
import 'package:test1/component/button_searching.dart';
import 'package:test1/component/card.dart';
import 'package:test1/component/card_order_cancelled.dart';
import 'package:test1/library/check_state_card_order.dart';

class ListCard extends StatefulWidget {
  const ListCard({
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
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: () {},
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:
                    (context) => Detail(
                      id: widget.id,
                      state: widget.state,
                      departure: widget.departure,
                      destination: widget.destination,
                    ),
              ),
            );
          },
          child:
              CheckStateCardOrder.checkStateCardOrder(
                    widget.state,
                    widget.id,
                    widget.departure,
                    widget.destination,
                  )
                  as Widget,
        ),
      ),
    );
  }
}
