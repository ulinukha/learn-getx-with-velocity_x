import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mobile/app/repository/_index.dart';
import 'common_widgets.dart';
import 'package:dartx/dartx.dart';
export 'package:get/get.dart';

abstract class BaseController extends GetxController with CommonWidgets {
  // INJECT ALL REPO
  var repoSearch = Get.put(SearchRepositories());

  // COMMON VARIABLE
  final _error = ''.obs;
  get error => _error.value;
  set error(val) => _error.value = val;

  final _isLoading = true.obs;
  get isLoading => _isLoading.value;
  set isLoading(val) => _isLoading.value = val;

  // code will run when widget completed rendering
  // use only when you need special case.
  // example : waiting some controller hash client, etc. without use FutureBuilder
  Future<void> onUIFinishRendering(Function0 callback) async {
    WidgetsBinding.instance!.addPostFrameCallback((_) => callback.call());
  }
}
