import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopink/core/utils/text_style.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade200,
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        title: Text(
          'Notifications',
          style: MyTextStyle.largetext,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade200,
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
            ),
          )
        ],
      ),
    );
  }
}
