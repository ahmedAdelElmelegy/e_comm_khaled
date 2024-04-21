import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shopink/controller/Root_controller.dart';

class RootView extends StatelessWidget {
  RootView({super.key});
  final RootController controller = Get.put(RootController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: NavigationBar(
            destinations: controller.item,
            selectedIndex: controller.currnerIndex.value,
            onDestinationSelected: (value) {
              controller.changeScreen(value);
            },
          ),
          body: controller.pages[controller.currnerIndex.value],
        ));
  }
}
