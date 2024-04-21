import 'package:flutter/material.dart';
import 'package:shopink/core/utils/text_style.dart';

class CustomtitleName extends StatelessWidget {
  const CustomtitleName({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: MyTextStyle.largetext,
        ),
        Text(
          'See all',
          style: MyTextStyle.smalltext,
        ),
      ],
    );
  }
}
