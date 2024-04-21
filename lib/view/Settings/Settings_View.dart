import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopink/core/function/AppBar.dart';
import 'package:shopink/core/utils/Constant.dart';
import 'package:shopink/core/utils/text_style.dart';
import 'package:shopink/view/Cart/widgets/CustomDriver.dart';

import 'package:shopink/view/Settings/widgets/Custom_settings_item.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          customAppbar(Icons.arrow_back_ios, 'Settings', Icons.more_horiz, () {
        Get.back();
      }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/smiley-handsome-man-posing_23-2148911841.jpg?t=st=1712769574~exp=1712773174~hmac=f40a5ce24efbe48e8b912cc7998936542e1b2fec47038f52fc0df0e070125189&w=740'),
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('Ahmed Adel', style: MyTextStyle.largetext),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            SizedBox(
              height: size.height * .4,
              child: ListView.builder(
                itemCount: Constant.settingitem.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(Constant.pageSetting[index]);
                  },
                  splashColor: Colors.grey.shade200,
                  child: CustomSettingsItem(
                    size: size,
                    settingModel: Constant.settingitem[index],
                  ),
                ),
              ),
            ),
            const CustomDivider(),
            Row(children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout,
                  )),
              SizedBox(
                height: size.height * .1,
              ),
              Text(
                'Signout',
                style: MyTextStyle.mediumtext,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
