import 'package:flutter/material.dart';
import 'package:test1/api/http.dart';
import 'package:test1/component/card.dart';
import 'package:test1/component/list_card.dart';
import 'package:test1/component/title_container.dart';
import 'package:test1/model/comment_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabViewController extends StatefulWidget {
  const TabViewController({super.key});

  @override
  State<TabViewController> createState() => _TabViewControllerState();
}

class _TabViewControllerState extends State<TabViewController> {
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
              Tab(child: TitleContainer(title: AppLocalizations.of(context)! )),
              Tab(child: TitleContainer(title: "Searching")),
              Tab(child: TitleContainer(title: "Active")),
              Tab(child: TitleContainer(title: "Completed")),
              Tab(child: TitleContainer(title: "Cancelled")),
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
              return Center(
                child: Text(AppLocalizations.of(context)!.helloWorld),
              );
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
