import 'package:flutter/material.dart';
import 'package:trend_store/common/widgets/appbar/appbar.dart';
import 'package:trend_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppColors.grey)),
          Text(AppTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: AppColors.white)),
        ],
      ),
      actions: [
        AppCartCounterIcon(
          onPressed: () {},
          iconColor: AppColors.white,
        ),
      ],
    );
  }
}
