import 'package:flutter/material.dart';
import 'package:test1/Component/Listitle.dart';
import 'package:test1/Component/TitleContainer.dart';
import 'package:test1/View/OrderListScreen.dart';

class TabViewController extends StatefulWidget {
  const TabViewController({super.key});

  @override
  State<TabViewController> createState() => _tabViewController();
}

class _tabViewController extends State<TabViewController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 90.0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderlistScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "Order List",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color(0xFF313F46),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(child: Titlecontainer(title: "All")),
              Tab(child: Titlecontainer(title: "Searching")),
              Tab(child: Titlecontainer(title: "Active")),
              Tab(child: Titlecontainer(title: "Completed")),
              Tab(child: Titlecontainer(title: "Cancelled")),
            ],
          ),
          backgroundColor: Colors.white,
        ),

        body: TabBarView(
          children: [
            ListView(
              children: [
                Listitle(
                  id: '#990455',
                  state_korean: "Korean",
                  state: "Active",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Active",
                ),
              ],
            ),
            ListView(
              children: [
                Listitle(
                  id: '#990455',
                  state_korean: "Korean",
                  state: "Cancelled",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Active",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Active",
                ),
              ],
            ),
            ListView(
              children: [
                Listitle(
                  id: '#990455',
                  state_korean: "Korean",
                  state: "Searching",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Active",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Completed",
                ),
              ],
            ),
            ListView(
              children: [
                Listitle(
                  id: '#990455',
                  state_korean: "Korean",
                  state: "Searching",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Active",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Completed",
                ),
              ],
            ),
            ListView(
              children: [
                Listitle(
                  id: '#990455',
                  state_korean: "Korean",
                  state: "Searching",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Cancelled",
                ),
                Listitle(
                  id: '#234763',
                  state_korean: "Korean",
                  state: "Cancelled",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
