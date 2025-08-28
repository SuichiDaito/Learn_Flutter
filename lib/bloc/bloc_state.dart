import 'package:chopper/chopper.dart';
import 'package:test1/model/comment_model.dart';

abstract class OrderState {}

class LoadingState extends OrderState {}

class LoadedState extends OrderState {
  final Response<List<Comment>> comments;
  final bool hasReachedMax;
  LoadedState(this.comments, this.hasReachedMax);
}

class ErrorState extends OrderState {
  final String message;
  ErrorState(this.message);
}

class LoadedStateCompany extends OrderState {
  final Response info;
  LoadedStateCompany(this.info);
}

class MoreState extends OrderState {
  final Response<List<Comment>> comments;
  final bool hasReachedMax;
  MoreState(this.comments, this.hasReachedMax);
}
