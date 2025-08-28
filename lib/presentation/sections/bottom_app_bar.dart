import 'package:flutter/material.dart';
import 'package:test1/logic/handle_button_navigation.dart';

class BottomAppBar extends StatefulWidget {
  late int selected;
  BottomAppBar({super.key, required this.selected});
  @override
  State<BottomAppBar> createState() => BottomAppBarState();
}

class BottomAppBarState extends State<BottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue[600],
      unselectedItemColor: Colors.grey[500],
      currentIndex: widget.selected,
      onTap: (index) {
        setState(() {
          widget.selected = index;
          HandleButtonNavigation.handleNavigation(index, context);
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Order'),
        BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Status'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
      ],
    );
  }
}
