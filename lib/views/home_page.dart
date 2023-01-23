import 'package:box_game/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(builder: (controller) {
        return Center(
          child: Column(
            children: controller.grid
                .map((e) => Row(
                    children: e
                        .map((e) => Container(
                      height: Get.width/4,
                      width: Get.width/4,
                      decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2,
                                  )),
                              child: FittedBox(child: Text(e.toString())),
                            ))
                        .toList()))
                .toList(),
          ),
        );
      }),
    );
  }
}
