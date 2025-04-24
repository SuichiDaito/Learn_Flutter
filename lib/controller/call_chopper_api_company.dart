import 'package:chopper/chopper.dart';
import 'package:test1/api/chopper_service.dart';
import 'package:test1/api/converter_chopper.dart';

class CallChopperApiCompany {
  static final chopper = ChopperClient(
    baseUrl: Uri.parse("http://stage-app-api.gogox.com"),
    services: [JsonServiceCompany.create()],
    converter: ModelConverter(),
  );
  static JsonServiceCompany get getInfoLogin =>
      chopper.getService<JsonServiceCompany>();
}
