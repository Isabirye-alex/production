import 'package:a_shop/utilis/helpers/helper_functions.dart';
import 'package:a_shop/widgets/app_bar.dart';
import 'package:a_shop/widgets/search_bar.dart';
import 'package:a_shop/widgets/store_grid.dart';
import 'package:a_shop/widgets/vertical_container.dart';
import 'package:flutter/material.dart';

import '../../utilis/constants/colors.dart';
import '../../utilis/constants/size.dart';
import '../../widgets/tab_bar.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AAppBar(
          style1: Theme.of(context).textTheme.headlineLarge!.apply(color: dark?Colors.white:Colors.black),
          style2: Theme.of(context).textTheme.bodyMedium!.apply(color: dark?Colors.white:Colors.black),
            title: 'Store',
            centerTitle: false, padding: 0, margin: 0,
        ),
        body: NestedScrollView(headerSliverBuilder: (__, innerBoxIsScrollable){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 370,
              pinned: true,
              floating: true,
              elevation: 0,
              // backgroundColor: Colors.red.shade50,
              flexibleSpace: Padding(padding: EdgeInsets.all(0),
              child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                  CustomSearchBar(hintText: 'Search in store......', color: dark? AColors.primary:AColors.darkerGrey),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Featured Brands', style: Theme.of(context).textTheme.headlineMedium!.apply(color:AColors.primary),),
                        TextButton(onPressed: (){},
                            child: Text('View All', style: Theme.of(context).textTheme.headlineMedium!.apply(color: AColors.primary),)
                        )
                      ],
                    ),
                    StoreGrid()

                ],
              ),
          ),
              bottom: ATabBar(dark: dark),
            )
          ];
        },
            body:TabBarView(children: [
              VerticalContainer(),
              VerticalContainer(),
              VerticalContainer(),
              VerticalContainer(),
              VerticalContainer(),
              VerticalContainer(),
              VerticalContainer(),
            ]))
        ),
    );
  }
}

