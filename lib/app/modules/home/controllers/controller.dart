import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/app/models/repository_model_entity.dart';
import '../../../base/lifecycle/_index.dart';

class HomeController extends BaseController {
  //TODO: Implement HomeController

  late TextEditingController _searchController = TextEditingController();

  TextEditingController get searchController => _searchController;
  final items = <RepositoryModelItems>[].obs;
  final defaultValue = "react".obs;
  final thisPage = 1.obs;
  final thisPerPage = 5.obs;
  final searchValue = ''.obs;

  @override
  void onInit() {
    super.onInit();
    onLoad();
  }

  onLoad() async {
    isLoading = true;
    var req = await repoSearch.getSearch(
      keyword: defaultValue.value,
      page: thisPage.value,
      perPage: thisPerPage.value,
    );
    isLoading = false;
    if (req.isFailure) {
      snackBarError(message: req.errorMessages, position: SnackPosition.TOP);
    } else {
      var res = RepositoryModelEntity().fromJson(req.body);
      items.addAll(res.items!);
    }
    print(items);
  }

  @override
  void onReady() {
    super.onReady();
  }

  onSearch(e) async {
    searchValue.value = e.toString();
    isLoading = true;
    var req = await repoSearch.getSearch(
      keyword: searchValue.value,
      page: thisPage.value,
      perPage: thisPerPage.value,
    );
    isLoading = false;
    print(req.body);
  }

  onClearSearch() {
    searchController.text = "";
    searchValue.value = "";
  }

  @override
  void onClose() {}
}
