import 'package:dio/dio.dart';

Future<dynamic> postAPI(url, Map params) async {
  //Global POST API request
  String globalUrl = url;
  if (params != null) {
    params.removeWhere((key, value) => value == "");
    String queryString = Uri(queryParameters: params).query;
    globalUrl += "?" + queryString;
  }
  dynamic jsonResponse = "";
  Dio dio = new Dio();
  dio.options.headers['content-Type'] = 'application/json';
  // dio.options.headers["authorization"] = "$token"; //add token to the header
  try {
    await dio.get(globalUrl).then((response) {
      jsonResponse = response.data;
    });
    return jsonResponse;
  } on DioError catch (e) {
    throw DioError(error: e, requestOptions: null);
  }
}
