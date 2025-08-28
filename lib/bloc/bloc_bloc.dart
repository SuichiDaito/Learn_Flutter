import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_state.dart';
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/controller/call_chopper_api.dart';
import 'package:test1/controller/call_chopper_api_company.dart';

class ImplementBloc extends Bloc<BlocEvent, OrderState> {
  int _currentPage = 0;
  static const int _limit = 20;

  ImplementBloc() : super(LoadingState()) {
    on<FetchData>(_onFetchData);
    on<RefreshData>(_refreshData);
    on<FetchDataCompany>(_onFetchDataCompany);
    on<RefreshDataCompany>(_onRefreshDataCompany);
    on<LoadingMoreData>(_onLoadMoreData);
  }

  Future<void> _onFetchData(FetchData event, Emitter<OrderState> emit) async {
    try {
      _currentPage = 0;
      emit(LoadingState());
      // comments: Response<List<Comment>>
      final comments = await CallChopperApi.commentService.getPosts(
        _currentPage,
        _limit,
      );
      final items = comments.body ?? [];
      final hasReachedMax = items.length < _limit;
      emit(LoadedState(comments, hasReachedMax));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  Future<void> _refreshData(RefreshData event, Emitter<OrderState> emit) async {
    try {
      // comments: Response<List<Comment>>
      final comments = await CallChopperApi.commentService.getPosts(
        _currentPage,
        _limit,
      );
      final items = comments.body ?? [];
      final hasReachedMax = items.length < _limit;
      emit(LoadedState(comments, hasReachedMax));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  Future<void> _onLoadMoreData(
    LoadingMoreData event,
    Emitter<OrderState> emit,
  ) async {
    final currentState = state;
    if (currentState is LoadedState && !currentState.hasReachedMax) {
      try {
        emit(LoadedState(currentState.comments, false));
        _currentPage++;
        // comments: Response<List<Comment>>
        final comments = await CallChopperApi.commentService.getPosts(
          _currentPage,
          _limit,
        );
        final items = comments.body ?? [];
        final hasReachedMax = items.length < _limit;
        emit(LoadedState(currentState.comments, hasReachedMax));
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    }
  }

  Future<void> _onFetchDataCompany(
    FetchDataCompany event,
    Emitter<OrderState> emit,
  ) async {
    try {
      final info = await CallChopperApiCompany.getInfoLogin.getInfo();
      emit(LoadedStateCompany(info));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  Future<void> _onRefreshDataCompany(
    RefreshDataCompany event,
    Emitter<OrderState> emit,
  ) async {
    try {
      final info = await CallChopperApiCompany.getInfoLogin.getInfo();
      emit(LoadedStateCompany(info));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
