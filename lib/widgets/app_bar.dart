import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:flutter/material.dart';

import '../utilis/constants/text_Strings.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget{
  const AAppBar({super.key, required this.title, required this.subtitle, required this.centerTitle});
  final String title;
  final String subtitle;
  final bool centerTitle;
  @override
  Widget build(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: centerTitle,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white)),
        Text(subtitle, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),)
      ],
    ),
  );
  }

  @override
  Size get preferredSize => Size.fromHeight(ADeviceUtils.appBarHeight);

}