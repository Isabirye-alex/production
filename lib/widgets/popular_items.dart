import 'package:flutter/material.dart';
import '../utilis/constants/image_strings.dart';
import '../utilis/constants/size.dart';
class PopularItems extends StatelessWidget {
  const PopularItems({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Fixed height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (__, index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(ASizes.sm),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child:Image(image: AssetImage(AImages.popularImage1),
                    width: 58,
                    height: 58,
                  )),
              ),
              Text('Iphone')

            ],
          );
        },
      ),
    );
  }
}