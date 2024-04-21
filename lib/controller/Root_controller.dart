import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopink/view/Cart/Cart_View.dart';
import 'package:shopink/view/favorite/Favorite_view.dart';
import 'package:shopink/view/home/Home_view.dart';

import 'package:shopink/view/home/widgets/Home_view_body.dart';
import 'package:shopink/view/Settings/Settings_View.dart';

class RootController extends GetxController {
  List<NavigationDestination> item = const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
    NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite'),
    NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
  ];
  RxInt currnerIndex = 0.obs;
  void changeScreen(int index) {
    currnerIndex.value = index;
  }

  List<Widget> pages = const [
    HomeView(),
    CartView(),
    FavoriteView(),
    SettingView(),
  ];
}
