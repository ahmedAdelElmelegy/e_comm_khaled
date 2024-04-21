import 'package:flutter/material.dart';
import 'package:shopink/core/function/AppBar.dart';

import 'package:shopink/view/home/widgets/Home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppbar(Icons.menu, 'Shopink', Icons.notifications_none, () {}),
      body: const HomeViewBody(),
    );
  }
}
