import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetSongsInfScrollCall {
  static Future<ApiCallResponse> call({
    String? songSearchString = '',
    String? order = 'songTitle',
    int? offset = 0,
    int? limit = 10,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Songs InfScroll',
      apiUrl:
          'https://iglauqocbeelidasizen.supabase.co/rest/v1/songsList?select=*${songSearchString}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlnbGF1cW9jYmVlbGlkYXNpemVuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0NDAwMzksImV4cCI6MjAyNzAxNjAzOX0.kunoPYy5qM9P-CmMPJR9vXupJ5e0dN_2Y6zoZW4PPZ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlnbGF1cW9jYmVlbGlkYXNpemVuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0NDAwMzksImV4cCI6MjAyNzAxNjAzOX0.kunoPYy5qM9P-CmMPJR9vXupJ5e0dN_2Y6zoZW4PPZ0',
      },
      params: {
        'order': order,
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SermonSearchCall {
  static Future<ApiCallResponse> call({
    String? speakerSearch = '',
    String? order = 'title',
    int? offset = 0,
    int? limit = 10,
    String? bookrefSearch = '',
    String? titleSearch = '&title=ilike.*Faith*',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SermonSearch',
      apiUrl:
          'https://iglauqocbeelidasizen.supabase.co/rest/v1/sermonList?select=*${speakerSearch}${bookrefSearch}${titleSearch}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlnbGF1cW9jYmVlbGlkYXNpemVuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0NDAwMzksImV4cCI6MjAyNzAxNjAzOX0.kunoPYy5qM9P-CmMPJR9vXupJ5e0dN_2Y6zoZW4PPZ0',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlnbGF1cW9jYmVlbGlkYXNpemVuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0NDAwMzksImV4cCI6MjAyNzAxNjAzOX0.kunoPYy5qM9P-CmMPJR9vXupJ5e0dN_2Y6zoZW4PPZ0',
      },
      params: {
        'order': order,
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? episode(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
