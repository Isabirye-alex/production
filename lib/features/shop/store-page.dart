import 'package:a_shop/widgets/app_bar.dart';
import 'package:a_shop/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../utilis/constants/size.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AAppBar(title: 'Store', subtitle: 'Find All your products here', centerTitle: false),
      body: NestedScrollView(headerSliverBuilder: (__, innerBoxIsScrollable){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 350,
            pinned: true,
            floating: true,
            elevation: 0,
            backgroundColor: Colors.greenAccent,
            flexibleSpace: Padding(padding: EdgeInsets.all(ASizes.defaultSpace),
            child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              children: [
                CustomSearchBar(hintText: 'Search in store......', color: Colors.transparent),
                SizedBox(height:ASizes.defaultSpace),

              ],
            ),
        )
          )
        ];
      },
          body:Container()
      ),
    );
  }
}
