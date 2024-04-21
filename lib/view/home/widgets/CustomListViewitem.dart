import 'package:flutter/material.dart';
import 'package:shopink/core/utils/assets.dart';
import 'package:shopink/core/utils/text_style.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size.height * .2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * .15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                  image: const DecorationImage(
                      image: AssetImage(Assets.imageShoes2))),
            ),
            Text(
              'Naike blaker low \'77  jumbo',
              style: MyTextStyle.mediumtext,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'women\'s shoes' * 10,
                        style: MyTextStyle.smalltext,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        '\$120.11',
                        style: MyTextStyle.mediumtext
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: size.width * .1,
                  width: size.width * .1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(.2)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
