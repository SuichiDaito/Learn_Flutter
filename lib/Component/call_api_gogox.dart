import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_data.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/bloc/bloc_implement.dart';

class CallApiGogox extends StatelessWidget {
  const CallApiGogox({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImplementBloc>(
      create: (_) => ImplementBloc()..add(FeatchDataGogox()),
      child: Scaffold(
        appBar: AppBar(title: Text("Infomation get APi from Gogox ")),
        body: BlocBuilder<ImplementBloc, Data>(
          builder: (context, state) {
            if (state is LoadingData) {
              return Center(child: CircularProgressIndicator());
            } else if (state is LoadedDataGogox) {
              ///
              final data = state.info.body;
              print(state.info);
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ImplementBloc>()..add(RefreshDataGogox());
                },
                child: Column(children: [Text("Info get from API: ${data}")]),
              );
            } else if (state is ErrorData) {
              return Center(child: Text("Error: ${state.message}"));
            }
            return Text("Error");
          },
        ),
      ),
    );
  }
}
