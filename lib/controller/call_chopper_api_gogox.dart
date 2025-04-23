import 'package:chopper/chopper.dart';
import 'package:test1/api/chopper_service.dart';
import 'package:test1/api/converter_chopper.dart';

class CallChopperApiGogox {
  static final chopper = ChopperClient(
    baseUrl: Uri.parse("http://stage-app-api.gogox.com"),
    services: [JsonGogoxService.create()],
    converter: ModelConverter(),
  );
  static JsonGogoxService get getInfoLogin =>
      chopper.getService<JsonGogoxService>();
}
