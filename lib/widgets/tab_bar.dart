import 'package:flutter/material.dart';

import '../utilis/constants/colors.dart';
class ATabBar extends StatelessWidget implements PreferredSizeWidget{
  const ATabBar({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Material(

        child:TabBar(

            indicatorColor:AColors.primary,
            unselectedLabelColor: dark?Colors.white:AColors.black,
            labelColor: dark?AColors.primary:AColors.primary,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(child: Text('Phones')),
              Tab(child: Text('Laptops')),
              Tab(child: Text('Computers')),
              Tab(child: Text('Woofers')),
              Tab(child: Text('Solar Systems')),
              Tab(child: Text('Sound systems')),
              Tab(child: Text('Electrical appliances')),
            ]
        )

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
