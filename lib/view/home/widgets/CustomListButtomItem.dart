import 'package:flutter/material.dart';
import 'package:shopink/core/utils/text_style.dart';

class CustomListButtomItem extends StatelessWidget {
  const CustomListButtomItem({super.key, required this.catName});
  final String catName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.15),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            catName,
            style: MyTextStyle.smalltext,
          )),
    );
  }
}
