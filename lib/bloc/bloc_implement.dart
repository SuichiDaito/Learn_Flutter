import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_data.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/controller/call_chopper_api.dart';
import 'package:test1/controller/call_chopper_api_company.dart';

class ImplementBloc extends Bloc<BlocEvent, Data> {
  int _currentPage = 0;
  static const int _limit = 20;

  ImplementBloc() : super(LoadingData()) {
    on<FetchData>(_onFetchData);
    on<RefreshData>(_refreshData);
    on<FetchDataCompany>(_onFetchDataCompany);
    on<RefreshDataCompany>(_onRefreshDataCompany);
    on<LoadingMoreData>(_onLoadMoreData);
  }

  Future<void> _onFetchData(FetchData event, Emitter<Data> emit) async {
    try {
      _currentPage = 0;
      emit(LoadingData());
      // comments: Response<List<Comment>>
      final comments = await CallChopperApi.commentService.getPosts(
        _currentPage,
        _limit,
      );
      final items = comments.body ?? [];
      final hasReachedMax = items.length < _limit;
      emit(LoadedData(comments, hasReachedMax));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<void> _refreshData(RefreshData event, Emitter<Data> emit) async {
    try {
      // comments: Response<List<Comment>>
      final comments = await CallChopperApi.commentService.getPosts(
        _currentPage,
        _limit,
      );
      final items = comments.body ?? [];
      final hasReachedMax = items.length < _limit;
      emit(LoadedData(comments, hasReachedMax));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<void> _onLoadMoreData(
    LoadingMoreData event,
    Emitter<Data> emit,
  ) async {
    final currentState = state;
    if (currentState is LoadedData && !currentState.hasReachedMax) {
      try {
        emit(LoadedData(currentState.comments, false));
        _currentPage++;
        // comments: Response<List<Comment>>
        final comments = await CallChopperApi.commentService.getPosts(
          _currentPage,
          _limit,
        );
        final items = comments.body ?? [];
        final hasReachedMax = items.length < _limit;
        emit(LoadedData(currentState.comments, hasReachedMax));
      } catch (e) {
        emit(ErrorData(e.toString()));
      }
    }
  }

  Future<void> _onFetchDataCompany(
    FetchDataCompany event,
    Emitter<Data> emit,
  ) async {
    try {
      final info = await CallChopperApiCompany.getInfoLogin.getInfo();
      emit(LoadedDataCompany(info));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }

  Future<void> _onRefreshDataCompany(
    RefreshDataCompany event,
    Emitter<Data> emit,
  ) async {
    try {
      final info = await CallChopperApiCompany.getInfoLogin.getInfo();
      emit(LoadedDataCompany(info));
    } catch (e) {
      emit(ErrorData(e.toString()));
    }
  }
}
