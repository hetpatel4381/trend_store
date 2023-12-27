// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:trend_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:trend_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:trend_store/common/widgets/text/section_heading.dart';
import 'package:trend_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:trend_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:trend_store/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            HomePrimaryHeaderContainer(
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
                        AppHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: AppPromoSlider(banners: [
                'assets/images/banners/promo-banner1.jpeg',
                'assets/images/banners/promo-banner2.jpeg',
                'assets/images/banners/promo-banner3.jpeg',
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
