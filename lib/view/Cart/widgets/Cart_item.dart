import 'package:flutter/material.dart';
import 'package:shopink/core/utils/assets.dart';
import 'package:shopink/core/utils/text_style.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: SizedBox(
          height: size.height * .2,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: size.height * .2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                      image: const DecorationImage(
                          image: AssetImage(Assets.imageShoes2))),
                ),
                SizedBox(
                  width: size.width * .02,
                ),
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * .6,
                        child: Text(
                          'Naike blaker low \'77  jumbo' * 10,
                          style: MyTextStyle.mediumtext,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(
                        width: size.width * .6,
                        child: Text(
                          'women\'s shoes' * 10,
                          style: MyTextStyle.smalltext,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$120.11',
                            style: MyTextStyle.mediumtext
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const InkWell(child: Icon(Icons.remove_circle)),
                                SizedBox(
                                  width: size.width * .02,
                                ),
                                Text(
                                  '1',
                                  style: MyTextStyle.mediumtext
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: size.width * .02,
                                ),
                                const InkWell(child: Icon(Icons.add_circle)),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
