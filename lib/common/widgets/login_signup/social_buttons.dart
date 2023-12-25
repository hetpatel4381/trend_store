import 'package:flutter/material.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/sizes.dart';

class AppSocialButtons extends StatelessWidget {
  const AppSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              // width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage("assets/images/login_images/google-logo.png"),
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtnItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey),
              borderRadius: BorderRadius.circular(80)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              // width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage("assets/images/login_images/facebook-logo.png"),
            ),
          ),
        ),
      ],
    );
  }
}
