import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trend_store/features/authentication/controllers.onboading/onboarding_controller.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/device/device_utility.dart';
import 'package:trend_store/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = AppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.light : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
