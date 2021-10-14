import 'package:get/get.dart';
import '../base/netwokring/_index.dart';

class SearchRepositories {
  var _service = Get.put(HttpService());

  Future<Outcome> getSearch(
      {required String keyword,
      required int perPage,
      required int page}) async {
    return await _service.httpGet(
        endPoint:
            'https://api.github.com/search/repositories?accept=application/vnd.github.v3+json&q=react&sort&order=&per_page=2&page=1');
  }
}
