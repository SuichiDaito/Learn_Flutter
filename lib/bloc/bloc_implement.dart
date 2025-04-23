import 'package:chopper/src/response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_data.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/controller/call_chopper_api.dart';
import 'package:test1/controller/call_chopper_api_gogox.dart';
import 'package:test1/model/comment_model.dart';

class ImplementBloc extends Bloc<BlocEvent, Data> {
  ImplementBloc() : super(LoadingData()) {
    on<FeatchData>(_onFetchData);
    on<RefreshData>(_refreshData);
    on<FeatchDataGogox>(_onFetchDataGogox);
    on<RefreshDataGogox>(_onRefreshDataGogox);
  }

  Future<void> _onFetchData(FeatchData event, Emitter<Data> emit) async {
    try {
      emit(LoadingData());
      // comments: Response<List<Comment>>
      final comments = await CallChopperApi.commentService.getPosts();
      emit(LoadedData(comments));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<void> _refreshData(RefreshData event, Emitter<Data> emit) async {
    try {
      // comments: Response<List<Comment>>
      final comments = await CallChopperApi.commentService.getPosts();
      emit(LoadedData(comments));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<void> _onFetchDataGogox(
    FeatchDataGogox event,
    Emitter<Data> emit,
  ) async {
    try {
      final info = await CallChopperApiGogox.getInfoLogin.getInfo();
      emit(LoadedDataGogox(info));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<void> _onRefreshDataGogox(
    RefreshDataGogox event,
    Emitter<Data> emit,
  ) async {
    try {
      final info = await CallChopperApiGogox.getInfoLogin.getInfo();
      emit(LoadedDataGogox(info));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }
}
