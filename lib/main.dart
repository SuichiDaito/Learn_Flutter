import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test1/Component/card.dart';
import 'package:test1/bloc/bloc_data.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/bloc/implement_bloc.dart';
import 'package:test1/component/address.dart';
import 'package:test1/component/button/button_complete.dart';
import 'package:test1/component/card_order_cancelled.dart';
import 'package:test1/component/list_card.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/tabbar/tab_view_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TabViewController(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImplementBloc>(
      create: (_) => ImplementBloc()..add(FeatchData()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fetch data when use bloc "),
          bottom: TabBar(tabs: [Tab(text: "Demooo")]),
        ),

        body: BlocBuilder<ImplementBloc, Data>(
          builder: (context, state) {
            if (state is LoadingData) {
              return Center(child: CircularProgressIndicator());
            } else if (state is LoadedData) {
              // map from Response<List<Comment>> to List<Comment>.
              final data = state.comments.body;
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ImplementBloc>().add(RefreshData());
                },
                child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Id: ${data[index].id}"),
                      subtitle: Text("Name: ${data[index].name}"),
                    );
                  },
                ),
              );
            } else if (state is ErrorData) {
              return Center(child: Text("Error: ${state.message}"));
            }
            return Text("No comment");
          },
        ),
      ),
    );
  }
}
