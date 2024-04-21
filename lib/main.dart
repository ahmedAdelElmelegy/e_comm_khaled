import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shopink/view/Root/Root_view.dart';

void main() {
  runApp(const Shopink());
}

class Shopink extends StatelessWidget {
  const Shopink({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: RootView(),
    );
  }
}
