import 'package:flutter/material.dart';

import '../utilis/constants/image_strings.dart';
import '../utilis/constants/size.dart';
import '../utilis/devices/device_utility.dart';
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
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                // top: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(ASizes.sm),
                  child: Image(image: AssetImage(AImages.popularImage6),
                    height:100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                      top: 0,
                      left: 4,
                      child: Text('-20% off', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.deepOrangeAccent, fontWeightDelta: 10),)),
              Positioned(
                      top: -10,
                      right: 4,
                      child: IconButton(onPressed: (){}, icon:Icon(Icons.favorite, color: Colors.orange,), color: Colors.amber)
                  ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: ASizes.sm, top: ASizes.sm),
                    decoration: BoxDecoration(),
                    child: Text('Samsung', style: Theme.of(context).textTheme.bodySmall),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: ASizes.sm, top: ASizes.sm),
                    decoration: BoxDecoration(),
                    child: Text('\$750', style: Theme.of(context).textTheme.bodySmall),
                  ),

                ],
              ),
              Icon(Icons.verified)
            ],
          )
        ],
      ),
    );
  }
}
