import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopink/core/function/AppBar.dart';
import 'package:shopink/view/favorite/widgets/Favorite_view_body.dart';
import 'package:shopink/view/home/widgets/CustomProductListItem.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          customAppbar(Icons.arrow_back_ios, 'Favorite', Icons.more_horiz, () {
        Get.back();
      }),
      body: FavoritViewBody(size: size),
    );
  }
}
