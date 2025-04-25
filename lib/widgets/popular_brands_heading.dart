import 'package:flutter/material.dart';

class PopularBrands extends StatelessWidget {
  const PopularBrands({
    super.key, required this.title, this.icon, required this.viewAll,
  });
  final String title;
  final IconData? icon;
  final String viewAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),
        TextButton(onPressed: (){}, child: Text(viewAll, style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),)),

      ],
    );
  }
}
