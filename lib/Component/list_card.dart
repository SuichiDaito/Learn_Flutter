import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/component/button/button_complete.dart';
import 'package:test1/component/button/button_searching.dart';
import 'package:test1/component/card.dart';
import 'package:test1/component/card_order_cancelled.dart';
import 'package:test1/library/check_state_card_order.dart';

class ListCard extends StatefulWidget {
  const ListCard({
    super.key,
    required this.id,
    required this.state,
    required this.stateKorean,
  });

  final String id;
  final String state;
  final String stateKorean;

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child:
              CheckStateCardOrder.checkStateCardOrder(
                    widget.state,
                    widget.id,
                    widget.stateKorean,
                  )
                  as Widget,
        );
      },
    );
  }
}
