import 'package:flutter/material.dart';
import 'package:shopink/core/utils/text_style.dart';
import 'package:shopink/view/Cart/widgets/CustomDriver.dart';
import 'package:shopink/view/Cart/widgets/Custom_cart_price_detailes.dart';
import 'package:shopink/view/Cart/widgets/Custom_list_view_seprated_cart.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomListViewSeparatedCart(),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CustomCartPriceDetails(
                title: 'Subtitle :',
                content: '\$800.00',
              ),
              SizedBox(height: size.height * .01),
              const CustomCartPriceDetails(
                title: 'Delivery Free :',
                content: '\$10.00',
              ),
              SizedBox(height: size.height * .01),
              const CustomCartPriceDetails(
                title: 'Discount :',
                content: '10 %',
                color: Colors.red,
              ),
              SizedBox(height: size.height * .01),
              const CustomDivider(),
              SizedBox(height: size.height * .03),
              const CustomCartPriceDetails(
                title: 'Total :',
                content: '\$780.00',
              ),
              SizedBox(
                height: size.height * .03,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF9CD2E),
                    minimumSize: Size(double.infinity, size.height * .06)),
                onPressed: () {},
                child: Text(
                  'Check Out',
                  style: MyTextStyle.mediumtext.copyWith(color: Colors.black),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
