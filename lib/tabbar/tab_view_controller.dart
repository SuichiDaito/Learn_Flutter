import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test1/api/http.dart';
import 'package:test1/component/card.dart';
import 'package:test1/component/list_card.dart';
import 'package:test1/component/title_container.dart';
import 'package:test1/controller/call_chopper_api.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/library/constant.dart';
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
        backgroundColor: ConstantColor.colorBackgroundSearching,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: ConstantColor.colorBackgroundSearching,
          centerTitle: false,
          title: Text(
            "Order List",
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: ConstantColor.colorBackgroundOrderListScreen,
            ),
          ),
          bottom: TabBar(
            indicator: BoxDecoration(), // xóa underline
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            unselectedLabelStyle: TextStyle(color: ConstantColor.colorBackgroundSearching),
            overlayColor: ConstantColor.
            indicatorColor: Colors.black,
            tabs: [
              Tab(child: TitleContainer(title: localization.title_all)),
              Tab(child: TitleContainer(title: localization.title_searching)),
              Tab(child: TitleContainer(title: localization.title_active)),
              Tab(child: TitleContainer(title: localization.title_complete)),
              Tab(child: TitleContainer(title: localization.title_cancelled)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListCard(id: "#4455", state: "Searching", stateKorean: "432bbd"),
            ListCard(id: "#4455", state: "Active", stateKorean: "432bbd"),
            ListCard(id: "#4455", state: "Completed", stateKorean: "432bbd"),
            ListCard(id: "#4455", state: "Cancelled", stateKorean: "432bbd"),
            ListCard(id: "#4455", state: "Searching", stateKorean: "432bbd"),
          ],
        ),
      ),
    );
  }
}
