import 'package:flutter/material.dart';
import 'package:shopink/core/utils/text_style.dart';

class CustomCartPriceDetails extends StatelessWidget {
  const CustomCartPriceDetails({
    super.key,
    required this.title,
    required this.content,
    this.color,
  });
  final String title;
  final String content;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: MyTextStyle.smalltext.copyWith(fontSize: 16),
        ),
        const Spacer(),
        Text(
          content,
          style: MyTextStyle.mediumtext.copyWith(color: color),
        )
      ],
    );
  }
}
