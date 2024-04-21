import 'package:flutter/material.dart';
import 'package:shopink/core/utils/assets.dart';
import 'package:shopink/core/utils/text_style.dart';

class CustomProductListItem extends StatelessWidget {
  const CustomProductListItem({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: size.height * .2,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(.15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          Image.asset(Assets.imageShoes2),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Product Name' * 10,
                  style: MyTextStyle.mediumtext,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '\$1000',
                  style: MyTextStyle.mediumtext,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue,
                child: InkWell(
                    onTap: () {},
                    splashColor: Colors.red,
                    child: const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
