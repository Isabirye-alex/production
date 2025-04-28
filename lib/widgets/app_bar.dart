import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:flutter/material.dart';

import '../utilis/constants/text_Strings.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget{
  const AAppBar({super.key, required this.title,this.subtitle, required this.centerTitle,required this.padding,  required this.margin, this.style1, this.style2});
  final String title;
  final String? subtitle;
  final bool centerTitle;
  final double padding;
  final double margin;
  final TextStyle? style1;
  final TextStyle? style2;
  @override
  Widget build(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: centerTitle,
    title: Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: style1),
          if(subtitle!=null)
          Text(subtitle!, style: style2)
        ],
      ),
    ),
  );
  }

  @override
  Size get preferredSize => Size.fromHeight(ADeviceUtils.appBarHeight);

}