import 'package:flutter/material.dart';
import 'package:shopink/core/utils/assets.dart';
import 'package:shopink/model/Setting_model.dart';
import 'package:shopink/view/Cart/Cart_View.dart';
import 'package:shopink/view/Settings/Notifications_view.dart';
import 'package:shopink/view/Settings/Order_view.dart';
import 'package:shopink/view/Settings/Profile_view.dart';
import 'package:shopink/view/favorite/Favorite_view.dart';

abstract class Constant {
  static List<String> bannerimage = [
    Assets.imageBannersBanner1,
    Assets.imageBannersBanner2,
  ];
  static List<String> catname = [
    'All',
    'Nike',
    'Adidas',
    'New Balance',
    'Puma'
  ];
  static List<SettingModel> settingitem = [
    SettingModel(title: 'profile', icon: Icons.person),
    SettingModel(title: 'My Cart', icon: Icons.shopping_cart),
    SettingModel(title: 'Favorite', icon: Icons.favorite),
    SettingModel(title: 'Orders', icon: Icons.local_shipping),
    SettingModel(title: 'Notifications', icon: Icons.notifications_none),
  ];
  static List<Widget> pageSetting = const [
    ProfileView(),
    CartView(),
    FavoriteView(),
    OrderView(),
    NotificationView()
  ];
}
