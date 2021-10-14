import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/app/modules/home/controllers/controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          title: Text(
            "Home",
            style: GoogleFonts.inika(color: Colors.black, fontSize: 24.0),
          ),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.search,
                        size: 27.0,
                      )),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: TextField(
                            controller: controller.searchController,
                            onChanged: (e) {
                              controller.onSearch(e);
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Repository",
                              hintStyle:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),
                        Obx(() => controller.searchValue.value != ""
                            ? Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () => controller.onClearSearch(),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: Icon(Icons.close)),
                                ),
                              )
                            : SizedBox())
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Container(
                  color: Colors.black12,
                  child: Obx(
                    () => ListView.builder(
                      itemCount: controller.items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: InkWell(
                              onTap: () => {},
                              child: Container(
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                          color: Colors.black26,
                                          borderRadius:
                                              BorderRadius.circular(70.0)),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${controller.items[index].name}",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          child: Text(
                                            "${controller.items[index].owner!.htmlUrl}",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black54,
                                                fontSize: 16.0),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        );
                      },
                    ),
                  )),
            )
          ],
        )),
      )),
    );
  }
}
