// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:trend_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:trend_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:trend_store/common/widgets/layouts/grid_layout.dart';
import 'package:trend_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:trend_store/common/widgets/text/section_heading.dart';
import 'package:trend_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:trend_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:trend_store/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/image_strings.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const HomePrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Custom AppBar
                  HomeAppBar(),
                  SizedBox(height: AppSizes.spaceBtwSetions),

                  /// SearchBar
                  AppSearchContainer(text: 'Search in Store'),
                  SizedBox(height: AppSizes.spaceBtwSetions),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        AppSectionHeading(
                            title: 'Product Categories',
                            textColor: AppColors.white,
                            showActionButton: false),
                        SizedBox(height: AppSizes.spaceBtnItems),

                        // Categories
                        AppHomeCategories(
                          categories: [
                            AppImages.sportIcon,
                            AppImages.clothIcon,
                            AppImages.shoeIcon,
                            AppImages.cosmeticsIcon,
                            AppImages.animalIcon,
                            AppImages.toyIcon,
                            AppImages.furnitureIcon,
                            AppImages.jeweleryIcon,
                            AppImages.electronicsIcon,
                            AppImages.dressIcon,
                          ],
                          title: [
                            AppTexts.sportItems,
                            AppTexts.tailoring,
                            AppTexts.shoes,
                            AppTexts.cosmetics,
                            AppTexts.animal,
                            AppTexts.toys,
                            AppTexts.furniture,
                            AppTexts.jewelery,
                            AppTexts.electronics,
                            AppTexts.dress,
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slilder
                  const AppPromoSlider(banners: [
                    AppImages.promoBanner1,
                    AppImages.promoBanner2,
                    AppImages.promoBanner3,
                  ]),
                  const SizedBox(height: AppSizes.spaceBtwSetions),

                  // Popular Products
                  AppGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const AppProductCardVertical(),
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
