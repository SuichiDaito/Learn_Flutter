import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/Component/Button/ButtonComplete.dart';
import 'package:test1/Component/Button/ButtonSearching.dart';
import 'package:test1/Component/Card.dart';

class ListCard extends StatefulWidget {
  const ListCard({
    super.key,
    required this.id,
    required this.state,
    required this.state_korean,
  });

  final String id;
  final String state;
  final String state_korean;

  @override
  State<ListCard> createState() => _Listtitle();
}

class _Listtitle extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: CardOrder(
        id: widget.id,
        state_korean: widget.state_korean,
        state: widget.state,
      ),
    );
  }
}
