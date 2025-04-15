import 'package:flutter/material.dart';
import 'package:test1/API/http.dart';
import 'package:test1/Component/Card.dart';
import 'package:test1/Component/Listitle.dart';
import 'package:test1/Component/TitleContainer.dart';
import 'package:test1/Model/Comment.dart';
import 'package:test1/View/OrderListScreen.dart';

class TabViewController extends StatefulWidget {
  const TabViewController({super.key});

  @override
  State<TabViewController> createState() => _tabViewController();
}

class _tabViewController extends State<TabViewController> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    API.getComment();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 90.0,
          title: Text(
            "Order List",
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Color(0xFF313F46),
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

        body: FutureBuilder(
          future: API.getComment(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              var data = snapshot.data;
              print(data);
              return Text("Get information successful");
            }
            return Center(child: CircularProgressIndicator());
          },
          // child: TabBarView(
          //   children: [
          //     ListView.builder(
          //     itemCount: ,
          //     itemBuilder: (context, index) {

          //     },)

          //     ListView(
          //       children: [
          //         ListCard(
          //           id: '#990455',
          //           state_korean: "배차중",
          //           state: "Cancelled",
          //         ),
          //         ListCard(id: '#234763', state_korean: "이사", state: "Active"),
          //         ListCard(id: '#234763', state_korean: "이사", state: "Active"),
          //       ],
          //     ),
          //     ListView(
          //       children: [
          //         ListCard(id: '#990455', state_korean: "이사", state: "Searching"),
          //         ListCard(id: '#234763', state_korean: "이사", state: "Active"),
          //         ListCard(id: '#234763', state_korean: "퀵", state: "Completed"),
          //       ],
          //     ),
          //     ListView(
          //       children: [
          //         ListCard(id: '#990455', state_korean: "이사", state: "Searching"),
          //         ListCard(id: '#234763', state_korean: "이사", state: "Active"),
          //         ListCard(id: '#234763', state_korean: "퀵", state: "Completed"),
          //       ],
          //     ),
          //     ListView(
          //       children: [
          //         ListCard(id: '#990455', state_korean: "이사", state: "Searching"),
          //         ListCard(
          //           id: '#234763',
          //           state_korean: "Korean",
          //           state: "Cancelled",
          //         ),
          //         ListCard(
          //           id: '#234763',
          //           state_korean: "Korean",
          //           state: "Cancelled",
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
