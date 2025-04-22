import 'package:chopper/chopper.dart';
import 'package:test1/model/comment_model.dart';

part 'chopper_service.chopper.dart';

@ChopperApi(baseUrl: '/comments')
abstract class JsonService extends ChopperService {
  @GET()
  Future<Response<List<Comment>>> getPosts();

  static JsonService create() => _$JsonService();
}
