import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UploadImageCall {
  static Future<ApiCallResponse> call({
    String? key = '6d207e02198a847aa98d0a2a901485a5',
    FFUploadedFile? source,
    String? action = 'upload',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'upload image',
      apiUrl: 'https://freeimage.host/api/1/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'key': key,
        'source': source,
        'action': action,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$.image.url''',
      );
  static dynamic success(dynamic response) => getJsonField(
        response,
        r'''$.status_code''',
      );
}

class DetectHelmetCall {
  static Future<ApiCallResponse> call({
    String? image = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'detectHelmet',
      apiUrl: 'https://headsafe-fe89c69dc419.herokuapp.com/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'image': image,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic prediction(dynamic response) => getJsonField(
        response,
        r'''$.predictions[:].class''',
        true,
      );
  static dynamic predictionImageurl(dynamic response) => getJsonField(
        response,
        r'''$.image_url''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
