import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/component/button/button_complete.dart';
import 'package:test1/component/button/button_searching.dart';
import 'package:test1/component/card.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: CardOrder(
        id: widget.id,
        stateKorean: widget.stateKorean,
        state: widget.state,
      ),
    );
  }
}
