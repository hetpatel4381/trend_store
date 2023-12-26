import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_store/utils/constants/colors.dart';

class AppCartCounterIcon extends StatelessWidget {
  const AppCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });
  final Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.grey, fontSizeFactor: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
