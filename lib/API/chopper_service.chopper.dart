// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$JsonService extends JsonService {
  _$JsonService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = JsonService;

  @override
  Future<Response<List<Comment>>> getPosts() {
    final Uri $url = Uri.parse('/comments');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Comment>, Comment>($request);
  }
}

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$JsonGogoxService extends JsonGogoxService {
  _$JsonGogoxService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = JsonGogoxService;

  @override
  Future<Response<dynamic>> getInfo() {
    final Uri $url = Uri.parse('/account/whoami');
    final Map<String, String> $headers = {
      'app-version': '99.99.99',
      'Authorization':
          'Token token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfYXV0aFR5cGUiOiIiLCJfYnJhbmNoQ29kZSI6MCwiX2lkIjozNTczNTYsIl9pZFRva2VuIjoiMGE2NzNkMDctMTAzZS0xMWYwLWE1YjUtMGFkNjE2MTUwMzAyIiwiX29yZ0lkIjoxNywiZXhwIjoxNzQ1NDgyMzMzLCJvcmlnX2lhdCI6MTc0NDg3NzUzM30.gM3reRa4KwaMnuUPy5fr0nlSexNvhlJs19qCsxyUZUs',
      'X-Platform': 'iOS',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
