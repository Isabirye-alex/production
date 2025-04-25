import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:a_shop/utilis/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../utilis/constants/size.dart';
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.title, required this.subtitle, required this.imageUrl,
  });
  final String title;
  final String subtitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: ASizes.sm, right: ASizes.sm),
          padding: EdgeInsets.all(ASizes.sm),
          decoration: BoxDecoration(),
            child: Image.asset(imageUrl,
              width: ADeviceUtils.getScreenWidth(context)*0.8,
              height: ADeviceUtils.getScreenHeight(context)*0.5,
            ),
        ),
        SizedBox(height: ASizes.sm),
        Container(
            margin: EdgeInsets.all(ASizes.sm),
            padding: EdgeInsets.all(ASizes.sm),
            child: Text(title, style: Theme.of(context).textTheme.headlineLarge!.apply(color: dark? Colors.white:Colors.black))),
        SizedBox(height: ASizes.sm),
        Container(
            margin: EdgeInsets.all(ASizes.sm),
            padding: EdgeInsets.all(ASizes.sm),
            child: Text(subtitle, style: Theme.of(context).textTheme.bodyLarge!.apply(color: dark?Colors.white:Colors.black))),
      ],
    );
  }
}