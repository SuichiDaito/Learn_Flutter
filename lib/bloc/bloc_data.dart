import 'package:chopper/chopper.dart';
import 'package:test1/model/comment_model.dart';

abstract class Data {}

class LoadingData extends Data {}

class LoadedData extends Data {
  final Response<List<Comment>> comments;
  final bool hasReachedMax;
  LoadedData(this.comments, this.hasReachedMax);
}

class ErrorData extends Data {
  final String message;
  ErrorData(this.message);
}

class LoadedDataCompany extends Data {
  final Response info;
  LoadedDataCompany(this.info);
}

class MoreData extends Data {
  final Response<List<Comment>> comments;
  final bool hasReachedMax;
  MoreData(this.comments, this.hasReachedMax);
}
