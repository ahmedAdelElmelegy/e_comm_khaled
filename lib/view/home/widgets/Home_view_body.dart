import 'package:flutter/material.dart';
import 'package:shopink/core/utils/Constant.dart';
import 'package:shopink/view/home/widgets/CustomListButtomItem.dart';
import 'package:shopink/view/home/widgets/CustomListViewitem.dart';
import 'package:shopink/view/home/widgets/CustomProductGridList.dart';
import 'package:shopink/view/home/widgets/Custom_banner_home.dart';
import 'package:shopink/view/home/widgets/Custom_title_name.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * .03,
                ),
                CustomBannerHome(size: size),
                SizedBox(
                  height: size.height * .02,
                ),
                const CustomtitleName(title: 'New Arrival'),
                SizedBox(
                  height: size.height * .02,
                ),
                SizedBox(
                  height: size.height * .3,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        CustomListviewItem(size: size),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                const CustomtitleName(title: 'Best Seller'),
                SizedBox(
                  height: size.height * .01,
                ),
                SizedBox(
                  height: size.height * .05,
                  child: ListView.builder(
                    itemBuilder: (context, index) => CustomListButtomItem(
                      catName: Constant.catname[index],
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: Constant.catname.length,
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
              ],
            ),
          ),
        ),
        CustomProductGridList(size: size)
      ],
    );
  }
}
