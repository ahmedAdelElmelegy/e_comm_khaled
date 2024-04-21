import 'package:flutter/material.dart';
import 'package:shopink/view/favorite/widgets/Custom_grid_view_list_item.dart';
import 'package:shopink/view/home/widgets/CustomProductListItem.dart';

class FavoritViewBody extends StatelessWidget {
  const FavoritViewBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomGridViewListItem(size: size);
  }
}
