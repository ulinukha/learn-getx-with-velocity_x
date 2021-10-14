import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile/app/modules/details/controllers/controller.dart';

class DetailsView extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        body: Container(
          child: Text("Details"),
        ),
      )),
    );
  }
}
