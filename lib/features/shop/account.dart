import 'package:a_shop/widgets/app_bar.dart';
import 'package:a_shop/widgets/menu_shape.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utilis/constants/image_strings.dart';
import '../../utilis/constants/size.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shape(height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AAppBar(
                    style1: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white),
                    title: 'Account', subtitle: '', centerTitle: false, padding: 0, margin: 0),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(AImages.darkAppLogo),
                  ),
                  title: Text('Name: ISABIRYE ALEX',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)),
                  subtitle: Text('Email: 7526878@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
                  trailing: Icon(Icons.edit_note),
                )    
            
              ],
            ),
            ),
            ListTile(
              leading: Icon(Iconsax.safe_home),
              title: Text('My Addresses'),
              subtitle: Text('Set shopping delivery address'),
            ),
            ListTile(
              leading: Icon(Iconsax.shopping_cart),
              title: Text('My Cart'),
              subtitle: Text('Add, remove products and move to checkout'),
            ),
            ListTile(leading: Icon(Iconsax.bag_tick),
            title: Text('My orders'),
              subtitle: Text('In progress and complete orders')),
            ListTile(leading: Icon(Iconsax.bank),
            title: Text('Bank Account'),
              subtitle: Text('Withdraw Balance to registered Bank Account'),
            ),
            ListTile(leading: Icon(Iconsax.discount_shape),
            title: Text('My Coupons'),
              subtitle: Text('All discount coupons for shopping'),
            ),
            ListTile(leading: Icon(Iconsax.notification),
            title: Text('Notifications'),
              subtitle: Text('Set any kind of notifications'),
            ),
            ListTile(leading: Icon(Iconsax.security_card),
            title: Text('Account Privacy'),
            subtitle: Text('Set any kind of notifications'),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: ASizes.md, top: 6),
              decoration: BoxDecoration(),
              child: Text('Account Settings', style: Theme.of(context).textTheme.headlineLarge),
            ),
            ListTile(leading: Icon(Iconsax.document_upload),
            title: Text('Upload data'),
            subtitle: Text('Upload data to your cloud Firebase'),
            ),
            ListTile(leading: Icon(Iconsax.location),
            title: Text('Live location'),
              subtitle: Text('Set recommendation based on Location'),
              trailing: Switch(value: false, onChanged: (value){}),
            ),
            ListTile(leading: Icon(Iconsax.security_user),
            title: Text('Safe mode'),
              subtitle: Text('Search result is safe for all ages'),
              trailing: Switch(value: false, onChanged: (value){}),
            ),
            ListTile(leading: Icon(Iconsax.image),
            title: Text('Image quality'),
              subtitle: Text('Set image quality to be seen'),
              trailing: Switch(value: false, onChanged: (value){}),
            ),
            SizedBox(
              height: ASizes.spaceBtwItems,
            ),
            SizedBox(width: double.infinity,
            child: OutlinedButton(onPressed: (){},
                child: Text('Logout'))),
            SizedBox(
              height: ASizes.spaceBtwItems,
            )
                ],
        ),
      ),
    );
  }
}
