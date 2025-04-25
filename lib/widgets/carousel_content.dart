import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utilis/constants/image_strings.dart';
import '../utilis/constants/size.dart';

class CarouselContent extends StatelessWidget {
  const CarouselContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(ASizes.md),
        border: Border.all(color: Colors.transparent)
      ),
      child: CarouselSlider(items:
          [
            Image(image: AssetImage(AImages.popularImage6),
            width: ADeviceUtils.getScreenWidth(context)* 0.85,
              height: 300,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(ASizes.md),
              child: Image(image: AssetImage(AImages.popularImage7),
              width: ADeviceUtils.getScreenWidth(context)* 0.85,
                height: 300,
              ),
            ),
          ],
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.decelerate,
            autoPlayInterval: Duration(seconds: 10),
            aspectRatio: 16/9,
          )
      ),
    );
  }
}
