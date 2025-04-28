import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:flutter/material.dart';
import '../utilis/constants/image_strings.dart';
import '../utilis/constants/size.dart';

class StoreGrid extends StatelessWidget {
  const StoreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 60,
              childAspectRatio: 16/9,
              crossAxisSpacing: ASizes.sm,
              mainAxisSpacing: ASizes.sm
          ),
          shrinkWrap: true,
          itemCount: 6,
          padding: EdgeInsets.all(ASizes.sm),
          physics: NeverScrollableScrollPhysics(),

          itemBuilder: (__, index){
            return AGrid();
          }),
    );
  }
}


class AGrid extends StatelessWidget {
  const AGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all(color: Colors.lightBlueAccent),
          borderRadius: BorderRadius.circular(ASizes.sm)),
      // padding: EdgeInsets.all(ASizes.sm),
      height: 300,
      width: ADeviceUtils.getScreenWidth(context)*0.48,
      // top: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(ASizes.sm),
                  child: Image(image: AssetImage(AImages.darkAppLogo),
                    height:100,
                    fit: BoxFit.cover,
                  ),
                ),



    );
  }
}


