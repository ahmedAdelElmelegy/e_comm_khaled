import 'package:flutter/material.dart';
import 'package:shopink/core/utils/text_style.dart';

AppBar customAppbar(icon1, title, icon2, void Function()? onTap) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        child:
            InkWell(onTap: onTap, splashColor: Colors.red, child: Icon(icon1)),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: MyTextStyle.customTextStyle,
    ),
    actions: [
      Material(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
            onTap: () {},
            splashColor: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Icon(
                icon2,
              ),
            )),
      ),
      const SizedBox(
        width: 10,
      )
    ],
  );
}
