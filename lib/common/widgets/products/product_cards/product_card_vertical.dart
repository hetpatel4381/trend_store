import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_store/common/styles/shadows.dart';
import 'package:trend_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:trend_store/common/widgets/icons/app_circular_icon.dart';
import 'package:trend_store/common/widgets/images/app_rounded_image.dart';
import 'package:trend_store/common/widgets/text/product_price_text.dart';
import 'package:trend_store/common/widgets/text/product_title_text.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/image_strings.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/helpers/helper_functions.dart';

class AppProductCardVertical extends StatelessWidget {
  const AppProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    // Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AppShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: dark ? AppColors.darkerGrey : AppColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, wishlist and discount tag.
            AppCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  // -- Thumbnail Image
                  const AppRoundedImage(
                    imageUrl: AppImages.productImage1,
                    applyImageRadius: true,
                  ),
    
                  // -- Sale Tag
                  Positioned(
                    top: 12,
                    child: AppCircularContainer(
                      height: 25,
                      width: 40,
                      radius: AppSizes.sm,
                      backgroundColor: AppColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.sm, vertical: AppSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: AppColors.black)),
                    ),
                  ),
    
                  // -- Favourite Item Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: AppCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtnItems / 2),
    
            // Details
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppProductTitleText(
                    title: "Red Nike Air Shoes",
                    smallSize: true,
                  ),
                  const SizedBox(height: AppSizes.spaceBtnItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: AppSizes.xs),
                      const Icon(Iconsax.verify5, color: AppColors.primary, size: AppSizes.iconXs),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      const AppProductPriceText(price:'35'),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight: Radius.circular(AppSizes.productImageRadius),
                          )
                        ),
                        child: const SizedBox(
                          width: AppSizes.iconLg * 1.2,
                          height: AppSizes.iconLg * 1.2,
                          child: Icon(Iconsax.add, color: AppColors.white,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}