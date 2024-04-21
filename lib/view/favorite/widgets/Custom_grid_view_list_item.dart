import 'package:flutter/material.dart';
import 'package:shopink/view/home/widgets/CustomProductListItem.dart';

class CustomGridViewListItem extends StatelessWidget {
  const CustomGridViewListItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.2 / 3,
      ),
      itemBuilder: (context, index) => CustomProductListItem(size: size),
    );
  }
}
