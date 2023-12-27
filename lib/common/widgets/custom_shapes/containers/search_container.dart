import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/device/device_utility.dart';
import 'package:trend_store/utils/helpers/helper_functions.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    Key? key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? AppColors.dark
                  : AppColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: AppColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.darkerGrey),
            const SizedBox(width: AppSizes.spaceBtnItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
