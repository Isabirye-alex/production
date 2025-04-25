import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:a_shop/widgets/vertical_grid.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../utilis/constants/image_strings.dart';
import '../utilis/constants/size.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 160,
            childAspectRatio: 16/9,
            crossAxisSpacing: ASizes.sm,
            mainAxisSpacing: ASizes.sm
          ),
          shrinkWrap: true,
          itemCount: 10,
          padding: EdgeInsets.all(ASizes.sm),
          physics: NeverScrollableScrollPhysics(),

          itemBuilder: (__, index){
             return AGrid();
          }),
    );
  }
}

