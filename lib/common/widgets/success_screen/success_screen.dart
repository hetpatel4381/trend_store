import 'package:flutter/material.dart';
import 'package:trend_store/common/styles/spacing_styles.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/helpers/helper_functions.dart';

class AppSuccessScreen extends StatelessWidget {
  const AppSuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
    });
  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                  image: AssetImage(image),
                  width: AppHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Title & SubTitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtnItems),
              Text(subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
