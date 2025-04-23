import 'package:chopper/chopper.dart';
import 'package:test1/model/comment_model.dart';

abstract class Data {}

class LoadingData extends Data {}

class LoadedData extends Data {
  final Response<List<Comment>> comments;
  LoadedData(this.comments);
}

class ErrorData extends Data {
  final String message;
  ErrorData(this.message);
}

class LoadedDataGogox extends Data {
  final Response info;
  LoadedDataGogox(this.info);
}
