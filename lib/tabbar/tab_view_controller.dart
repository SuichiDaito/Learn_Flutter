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
        backgroundColor: ConstantColor.colorNeutral4,
        appBar: AppBar(
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          // centerTitle: false,
          // title: Text(
          //   "Order List",
          //   style: TextStyle(
          //     fontFamily: "Roboto",
          //     fontWeight: FontWeight.w500,
          //     fontSize: 24,
          //     color: ConstantColor.colorNeutral1,
          //   ),
          // ),
          bottom: TabBar(
            indicator: BoxDecoration(),
            labelColor: Colors.black,
            isScrollable: true,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: TitleContainer(
                  title: localization.title_all,
                  color: ConstantColor.colorBackgroundSecondary,
                  colorText: ConstantColor.colorNeutral1,
                ),
              ),
              Tab(
                child: TitleContainer(
                  title: localization.title_searching,
                  color: ConstantColor.colorNeutral4,
                  colorText: ConstantColor.colorNeutral1,
                ),
              ),
              Tab(
                child: TitleContainer(
                  title: localization.title_active,
                  color: ConstantColor.colorNeutral4,
                  colorText: ConstantColor.colorNeutral1,
                ),
              ),
              Tab(
                child: TitleContainer(
                  title: localization.title_complete,
                  color: ConstantColor.colorNeutral4,
                  colorText: ConstantColor.colorNeutral1,
                ),
              ),
              Tab(
                child: TitleContainer(
                  title: localization.title_cancelled,
                  color: ConstantColor.colorNeutral4,
                  colorText: ConstantColor.colorNeutral1,
                ),
              ),
            ],
          ),
        ),
        body: Builder(
          builder: (context) {
            return MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10.0,
                ),
                child: TabBarView(
                  children: [
                    ListCard(
                      id: "#4455",
                      state: "Searching",
                      stateKorean: "432bbd",
                    ),
                    ListCard(
                      id: "#4455",
                      state: "Active",
                      stateKorean: "432bbd",
                    ),
                    ListCard(
                      id: "#4455",
                      state: "Completed",
                      stateKorean: "432bbd",
                    ),
                    ListCard(
                      id: "#4455",
                      state: "Cancelled",
                      stateKorean: "432bbd",
                    ),
                    ListCard(
                      id: "#4455",
                      state: "Searching",
                      stateKorean: "432bbd",
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
