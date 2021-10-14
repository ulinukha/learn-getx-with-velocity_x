import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'interceptor.dart';
import 'outcome.dart';

enum Method { GET, POST, PUT, DELETE }

class HttpService {
  var _api = new _Api();

  Future<Outcome> httpGet({
    String endPoint = "",
    Map<String, dynamic>? query,
    bool withToken = true,
  }) async {
    return await _api.httpGet(endPoint: endPoint, query: query);
  }
}

// —————————————————————————————————————————————————————————————————————————————
/// PRIVATE CLASS
/// configure http here !!
// —————————————————————————————————————————————————————————————————————————————
class _Api extends GetConnect {
  @override
  void onInit() {
    super.onInit();
  }

  Future<Outcome> httpGet({
    required String endPoint,
    Map<String, dynamic>? query,
    bool withToken = false,
  }) async {
    var _result = Outcome();

    print("GET     : $endPoint");
    try {
      if (query != null) print("QUERY   : ${jsonEncode(query)}");
    } catch (e) {
      if (query != null) print("QUERY   : $query");
    }

    try {
      var res = await get(endPoint);
      print("RESPONSE CODE : ${res.statusCode}");

      if (res.isOk) {
        print("${res.bodyString}");
        _result.body = res.body;
        _result.isFailure = false;
        return _result;
      } else {
        return errorInterceptorHandling(res, _result);
      }
    } catch (e) {
      return errorInterceptorHandling(e, _result);
    }
  }
}
