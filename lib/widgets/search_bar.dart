import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:flutter/material.dart';

import '../utilis/constants/size.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.hintText, required this.color});
  final String hintText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ASizes.sm),
      height: 40,
      width: ADeviceUtils.getScreenWidth(context)* 1,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child:GestureDetector(
        onTap: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.search, color: Colors.grey,),
            Text(hintText, style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
