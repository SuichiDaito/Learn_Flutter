import 'package:flutter/material.dart' hide State;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_state.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/bloc/bloc_bloc.dart';

class CallApiCompany extends StatelessWidget {
  const CallApiCompany({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImplementBloc>(
      create: (_) => ImplementBloc()..add(FetchDataCompany()),
      child: Scaffold(
        appBar: AppBar(title: Text("Information get APi from Company  ")),
        body: BlocBuilder<ImplementBloc, OrderState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is LoadedStateCompany) {
              ///
              final data = state.info.body;
              debugPrint(state.info.toString());
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ImplementBloc>().add(RefreshDataCompany());
                },
                child: Column(children: [Text("Info get from API: $data")]),
              );
            } else if (state is ErrorState) {
              return Center(child: Text("Error: ${state.message}"));
            }
            return Text("Error");
          },
        ),
      ),
    );
  }
}
