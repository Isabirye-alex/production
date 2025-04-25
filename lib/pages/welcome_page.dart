import 'package:a_shop/utilis/devices/device_utility.dart';
import 'package:a_shop/utilis/helpers/helper_functions.dart';
import 'package:a_shop/widgets/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../utilis/constants/image_strings.dart';
import '../utilis/constants/size.dart';
import '../utilis/constants/text_Strings.dart';
import '../widgets/onboardingpage.dart';
import '../widgets/progressindicator.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.all(ASizes.md),
          // decoration: BoxDecoration(color: AColors.primary),
          height: 400,
          width: double.infinity,
          child: Stack(
            children: [
              //Welcome pages
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: [
                  OnBoardingPage(title: ATexts.onBoardingTitle1, subtitle: ATexts.onBoardingSubTitle1, imageUrl: AImages.onboardingImage1,),
                  OnBoardingPage(title: ATexts.onBoardingTitle2, subtitle: ATexts.onBoardingSubTitle2, imageUrl: AImages.onboardingImage2,),
                  OnBoardingPage(title: ATexts.onBoardingTitle3, subtitle: ATexts.onBoardingSubTitle3, imageUrl: AImages.onboardingImage3,)
                ],
              ),
              //Skip button
              Positioned(
                  top: ADeviceUtils.appBarHeight,
                  right: ASizes.md,
                  child: Container(
                child: TextButton(
                    onPressed: ()=>OnBoardingController.instance.skipPage(),
                    child: Text('Skip', style: Theme.of(context).textTheme.bodyLarge!.apply())),
              )),
              //Next button
              Positioned(
                  bottom: ADeviceUtils.bottomNavBarHeight,
                  right: ASizes.md,
                  child: Container(
                    decoration: BoxDecoration(
                      color: dark?Colors.white:Colors.blue,
                      borderRadius: BorderRadius.circular(400)
                    ),
                child: IconButton(
                    onPressed: ()=>OnBoardingController.instance.nextPage(),
                    icon: Icon(Iconsax.arrow_right,
                        color: dark?Colors.blue:Colors.black)),
                  )
              ),
              Positioned(
                bottom: ADeviceUtils.bottomNavBarHeight,
                left: ASizes.md,
                child: ProgressPageIndicator(
                  width: 15,
                  height: 4,
                  dotColor:
                  Colors.green,
                  activeDotColor: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

