import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:test1/api/http.dart';
import 'package:test1/bloc/bloc_data.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/bloc/implement_bloc.dart';
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
    return BlocProvider<ImplementBloc>(
      create: (_) => ImplementBloc()..add(FeatchData()),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: ConstantColor.colorNeutral4,
          appBar: AppBar(
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white,
            centerTitle: false,
            title: Text(
              "Order List",
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: ConstantColor.colorNeutral1,
              ),
            ),
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
          body: BlocBuilder<ImplementBloc, Data>(
            builder: (context, state) {
              if (state is LoadingData) {
                return Center(child: CircularProgressIndicator());
              } else if (state is LoadedData) {
                final data = state.comments.body;
                return RefreshIndicator(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10.0,
                    ),
                    child: TabBarView(
                      children: [
                        ListView.builder(
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            return ListCard(
                              id: "#${data[index].id}",
                              state: "Searching",
                              departure: "${data[index].name}",
                              destination: "${data[index].name}",
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            return ListCard(
                              id: "#${data[index].id}",
                              state: "Searching",
                              departure: "${data[index].email}",
                              destination: "${data[index].name}",
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            return ListCard(
                              id: "#${data[index].id}",
                              state: "Active",
                              departure: "${data[index].email}",
                              destination: "${data[index].name}",
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            return ListCard(
                              id: "#${data[index].id}",
                              state: "Completed",
                              departure: "${data[index].email}",
                              destination: "${data[index].name}",
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            return ListCard(
                              id: "# ${data[index].id}",
                              state: "Cancelled",
                              departure: "${data[index].email}",
                              destination: "${data[index].name}",
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  onRefresh: () async {
                    context.read<ImplementBloc>().add(RefreshData());
                  },
                );
              } else if (state is ErrorData) {
                return Center(child: Text("Error: ${state.message}"));
              }
              return Text("Error");
            },
          ),
        ),
      ),
    );
  }
}
