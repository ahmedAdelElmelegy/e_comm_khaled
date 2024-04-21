import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopink/core/function/AppBar.dart';
import 'package:shopink/core/utils/text_style.dart';
import 'package:shopink/view/Cart/widgets/Cart_view_body.dart';

import 'package:shopink/view/Cart/widgets/CustomDriver.dart';
import 'package:shopink/view/Cart/widgets/Custom_cart_price_detailes.dart';
import 'package:shopink/view/Cart/widgets/Custom_list_view_seprated_cart.dart';
import 'package:shopink/view/Cart/widgets/Empty_cart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEmpty = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          customAppbar(Icons.arrow_back_ios, 'My Cart', Icons.more_horiz, () {
        Get.back();
      }),
      body: isEmpty == false ? CartViewBody(size: size) : const EmptyCart(),
    );
  }
}
