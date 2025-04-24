import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_data.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/bloc/bloc_implement.dart';
import 'package:test1/component/list_card.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key, required this.state});
  final String state;
  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          BlocProvider(
            create: (_) => ImplementBloc()..add(FetchData()),
            child: BlocBuilder<ImplementBloc, Data>(
              builder: (context, state) {
                if (state is LoadingData) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is LoadedData) {
                  final data = state.comments.body;
                  return RefreshIndicator(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 20.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: data!.length,
                              itemBuilder: (context, index) {
                                return ListCard(
                                  id: "#${data[index].id}",
                                  state: widget.state,
                                  departure: data[index].name,
                                  destination: data[index].name,
                                );
                              },
                            ),
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
        ],
      ),
    );
  }
}
