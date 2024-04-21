import 'package:flutter/material.dart';
import 'package:shopink/core/utils/text_style.dart';
import 'package:shopink/model/Setting_model.dart';

class CustomSettingsItem extends StatelessWidget {
  const CustomSettingsItem({
    super.key,
    required this.settingModel,
    required this.size,
  });
  final SettingModel settingModel;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            settingModel.icon,
          ),
          SizedBox(
            width: size.width * .04,
          ),
          Text(
            settingModel.title,
            style: MyTextStyle.mediumtext,
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_right,
          ),
        ],
      ),
    );
  }
}
