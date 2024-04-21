import 'package:flutter/material.dart';
import 'package:shopink/view/Cart/widgets/Cart_item.dart';
import 'package:shopink/view/Cart/widgets/CustomDriver.dart';

class CustomListViewSeparatedCart extends StatelessWidget {
  const CustomListViewSeparatedCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) => const CartItem(),
          separatorBuilder: (context, index) => const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomDivider(),
              ),
          itemCount: 10),
    );
  }
}
