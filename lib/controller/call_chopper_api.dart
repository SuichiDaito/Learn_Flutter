import 'package:chopper/chopper.dart';
import 'package:test1/API/converter_chopper.dart';
import 'package:test1/api/chopper_service.dart';
import 'package:test1/model/comment_model.dart';

class CallChopperApi {
  static final chopper = ChopperClient(
    baseUrl: Uri.parse('https://jsonplaceholder.typicode.com/'),
    services: [JsonService.create()],
    converter: ModelConverter(),
  );
  static JsonService get commentService => chopper.getService<JsonService>();
}
