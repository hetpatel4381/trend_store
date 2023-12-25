import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_store/features/authentication/controllers.onboading/onboarding_controller.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight(),
      right: AppSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          // backgroundColor: dark ? AppColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
