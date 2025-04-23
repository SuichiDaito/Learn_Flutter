import 'package:chopper/chopper.dart';
import 'package:test1/model/comment_model.dart';

part 'chopper_service.chopper.dart';

@ChopperApi(baseUrl: '/comments')
abstract class JsonService extends ChopperService {
  @GET()
  Future<Response<List<Comment>>> getPosts();

  static JsonService create() => _$JsonService();
}

@ChopperApi(baseUrl: '/account/whoami')
abstract class JsonGogoxService extends ChopperService {
  @GET(
    path: '',
    headers: {
      'app-version': '99.99.99',
      'Authorization':
          'Token token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfYXV0aFR5cGUiOiIiLCJfYnJhbmNoQ29kZSI6MCwiX2lkIjozNTczNTYsIl9pZFRva2VuIjoiMGE2NzNkMDctMTAzZS0xMWYwLWE1YjUtMGFkNjE2MTUwMzAyIiwiX29yZ0lkIjoxNywiZXhwIjoxNzQ1NDgyMzMzLCJvcmlnX2lhdCI6MTc0NDg3NzUzM30.gM3reRa4KwaMnuUPy5fr0nlSexNvhlJs19qCsxyUZUs',
      'X-Platform': 'iOS',
    },
  )
  Future<Response> getInfo();

  static JsonGogoxService create() => _$JsonGogoxService();
}
