import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shopink/core/utils/Constant.dart';

class CustomBannerHome extends StatelessWidget {
  const CustomBannerHome({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 2)
      ]),
      height: size.height * .18,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset(
                Constant.bannerimage[index],
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        itemCount: Constant.bannerimage.length,
      ),
    );
  }
}
