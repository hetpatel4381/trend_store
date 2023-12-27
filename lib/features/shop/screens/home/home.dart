// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:trend_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:trend_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:trend_store/common/widgets/text/section_heading.dart';
import 'package:trend_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    padding: const EdgeInsets.all(AppSizes.md),
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
