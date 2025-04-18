import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test1/api/http.dart';
import 'package:test1/component/card.dart';
import 'package:test1/component/list_card.dart';
import 'package:test1/component/title_container.dart';
import 'package:test1/controller/call_chopper_api.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/model/comment_model.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          centerTitle: false,
          // toolbarHeight: 80.0,
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
              Tab(child: TitleContainer(title: localization.title_all)),
              Tab(child: TitleContainer(title: localization.title_searching)),
              Tab(child: TitleContainer(title: localization.title_active)),
              Tab(child: TitleContainer(title: localization.title_complete)),
              Tab(child: TitleContainer(title: localization.title_cancelled)),
            ],
          ),
          backgroundColor: Colors.white,
        ),

        body: FutureBuilder(
          future: CallChopperApi.commentService.getPosts(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              print("ConnectState: ${snapshot.connectionState}");
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              var data = snapshot.data!.body;
              print("Data return : ${data}");
              return Center(
                child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Id: ${data[index].id}"),
                        Text("Name: ${data[index].name}"),
                        Text("Email: ${data[index].email}"),
                        Text("Body: ${data[index].body}"),
                      ],
                    );
                  },
                ),
              );
            }
            return Text("Error");
          },
          // child: TabBarView(
          //   children: [
          //     ListView.builder(
          //     itemCount: ,
          //     itemBuilder: (context, index) {

          //     },)

          //     ListView(
          //       children: [
          // ListCard(
          //             id: '#990455',
          //             stateKorean: "${data[index].id}",
          //             state: localization.title_cancelled,
          //           );
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
