import 'package:a_shop/widgets/carousel_content.dart';
import 'package:a_shop/widgets/popular_items.dart';
import 'package:a_shop/widgets/vertical_container.dart';
import 'package:flutter/material.dart';
import '../../utilis/constants/size.dart';
import '../../utilis/constants/text_Strings.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/menu_shape.dart';
import '../../widgets/popular_brands_heading.dart';
import '../../widgets/search_bar.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shape(height: 400,
            child: Container(
              margin: EdgeInsets.all(ASizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AAppBar(title: ATexts.homeAppbarTitle, subtitle: ATexts.homeAppbarSubTitle, centerTitle: false,),
                      SizedBox(height: ASizes.spaceBtwSections),
                      CustomSearchBar(hintText: 'Search products...', color: Colors.transparent,),
                      SizedBox(height: ASizes.spaceBtwSections),
                      PopularBrands(title: 'Popular Brands', viewAll: 'View All',),
                      PopularItems(),


                    ],
              ),
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              width: double.infinity,
                padding: EdgeInsets.only(left: ASizes.sm),
                child: Text('Trending items', style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.black),)),
            CarouselContent(),
            Container(
              width: double.infinity,
              height: 40,
              padding: EdgeInsets.all(ASizes.sm),
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
              ),
              child: Text('Curated for you', style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),
            ),
            VerticalContainer()
    ])
      )
    );
  }
}

