import 'package:flutter/material.dart';
import 'package:trend_store/features/authentication/controllers.onboading/onboarding_controller.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
