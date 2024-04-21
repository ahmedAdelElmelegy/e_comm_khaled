import 'package:flutter/material.dart';

import 'package:shopink/core/utils/assets.dart';
import 'package:shopink/core/utils/text_style.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imageShoppingBasket,
              height: size.height * .35,
              width: double.infinity,
            ),
            Text(
              'Whoops',
              style: MyTextStyle.largetext
                  .copyWith(color: Colors.red, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your Cart is Empty',
                style: MyTextStyle.largetext,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'looks like  you didn\'t add anything yet\n to your cart \n go ahead and start shopping now ',
                style: MyTextStyle.mediumtext.copyWith(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(size.width * .4, size.height * .06)),
                onPressed: () {},
                child: Text(
                  'Shop now',
                  style: MyTextStyle.mediumtext.copyWith(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
