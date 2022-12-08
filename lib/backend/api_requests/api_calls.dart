import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Looker Group Code

class LookerGroup {
  static String baseUrl = 'https://hack.looker.com:19999';
  static Map<String, String> headers = {
    'Authorization': 'token V7N9NRqGztRYYrQmBcnkqqwRJYVHTWtN5pQrSvd8',
  };
  static GetUserIDCall getUserIDCall = GetUserIDCall();
  static GetCurrentUserDataCall getCurrentUserDataCall =
      GetCurrentUserDataCall();
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static GetUserAttributesCall getUserAttributesCall = GetUserAttributesCall();
  static GetLookMLModelsCall getLookMLModelsCall = GetLookMLModelsCall();
  static GetAllConnectionsCall getAllConnectionsCall = GetAllConnectionsCall();
  static GetAllDashboardIDsCall getAllDashboardIDsCall =
      GetAllDashboardIDsCall();
  static GetUserNumberCall getUserNumberCall = GetUserNumberCall();
  static GetLooksNumberCall getLooksNumberCall = GetLooksNumberCall();
}

class GetUserIDCall {
  Future<ApiCallResponse> call({
    int? userId = 2222,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User ID',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/users/${userId}',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic firstname(dynamic response) => getJsonField(
        response,
        r'''$.first_name''',
      );
  dynamic lastname(dynamic response) => getJsonField(
        response,
        r'''$.last_name''',
      );
  dynamic avatar(dynamic response) => getJsonField(
        response,
        r'''$.avatar_url''',
      );
  dynamic disabled(dynamic response) => getJsonField(
        response,
        r'''$.is_disabled''',
      );
}

class GetCurrentUserDataCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Current User Data',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/user/',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  dynamic firstname(dynamic response) => getJsonField(
        response,
        r'''$.first_name''',
      );
  dynamic avatarurlsizing(dynamic response) => getJsonField(
        response,
        r'''$.avatar_url_without_sizing''',
      );
  dynamic avatarurl(dynamic response) => getJsonField(
        response,
        r'''$.avatar_url''',
      );
  dynamic lastname(dynamic response) => getJsonField(
        response,
        r'''$.last_name''',
      );
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    int? userID = 2222,
    String? firstName = 'Marco',
    String? lastName = '',
  }) {
    final body = '''
{
  "credentials_email": {},
  "first_name": "${firstName}",
  "home_folder_id": "",
  "is_disabled": false,
  "last_name": "${lastName}",
  "locale": "",
  "models_dir_validated": false,
  "ui_state": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/users/${userID}',
      callType: ApiCallType.PATCH,
      headers: {
        ...LookerGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

class GetUserAttributesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User Attributes',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/user_attributes/',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  dynamic label(dynamic response) => getJsonField(
        response,
        r'''$[:].label''',
        true,
      );
  dynamic edit(dynamic response) => getJsonField(
        response,
        r'''$[:].user_can_edit''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class GetLookMLModelsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get LookML Models',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/lookml_models',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {
        'fields': "has_content,label, name,project_name",
      },
      returnBody: true,
      cache: false,
    );
  }

  dynamic hasContent(dynamic response) => getJsonField(
        response,
        r'''$[:].has_content''',
        true,
      );
  dynamic label(dynamic response) => getJsonField(
        response,
        r'''$[:].label''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  dynamic projectName(dynamic response) => getJsonField(
        response,
        r'''$[:].project_name''',
        true,
      );
}

class GetAllConnectionsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Connections',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/connections',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  dynamic connections(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
}

class GetAllDashboardIDsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Dashboard IDs',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/dashboards',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {
        'fields': "id",
      },
      returnBody: true,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class GetUserNumberCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User Number',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/users',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {
        'fields': "id",
      },
      returnBody: true,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class GetLooksNumberCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Looks Number',
      apiUrl: '${LookerGroup.baseUrl}/api/4.0/looks',
      callType: ApiCallType.GET,
      headers: {
        ...LookerGroup.headers,
      },
      params: {
        'fields': "id",
      },
      returnBody: true,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

/// End Looker Group Code

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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
