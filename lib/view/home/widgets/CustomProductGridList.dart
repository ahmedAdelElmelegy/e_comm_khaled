import 'package:flutter/material.dart';
import 'package:shopink/view/home/widgets/CustomProductListItem.dart';

class CustomProductGridList extends StatelessWidget {
  const CustomProductGridList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
            (context, index) => CustomProductListItem(size: size)),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.2 / 3, crossAxisCount: 2));
  }
}
