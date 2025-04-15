import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderlistScreen extends StatefulWidget {
  const OrderlistScreen({super.key});

  @override
  State<OrderlistScreen> createState() => _OrderlistScreen();
}

class _OrderlistScreen extends State<OrderlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order List",
          style: TextStyle(
            color: const Color.fromARGB(255, 39, 38, 38),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: [ 
        ],
      ),
    );
  }
}
