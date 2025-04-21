import 'package:chopper/src/response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_data.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/controller/call_chopper_api.dart';
import 'package:test1/model/comment_model.dart';

class ImplementBloc extends Bloc<BlocEvent, Data> {
  ImplementBloc() : super(LoadingData()) {
    on<FeatchData>(_onFetchData);
    on<RefreshData>(_refreshData);
  }

  Future<void> _onFetchData(FeatchData event, Emitter<Data> emit) async {
    try {
      emit(LoadingData());
      final comments = await CallChopperApi.commentService.getPosts();
      emit(LoadedData(comments));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<void> _refreshData(RefreshData event, Emitter<Data> emit) async {
    try {
      final comments = await CallChopperApi.commentService.getPosts();
      emit(LoadedData(comments));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<List<Comment>> fetchDataFromAPI() async {
    final list = await CallChopperApi.commentService.getPosts();
    final List<Comment> comments = await list.data!;
    return comments;
  }
}

extension on Response<List<Comment>> {
  get data => null;
}
