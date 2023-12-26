import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_store/utils/constants/image_strings.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/constants/text_strings.dart';
import 'package:trend_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                  image: const AssetImage(AppImages.deliveredEmailIllustration),
                  width: AppHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Title & SubTitle
              Text(AppTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtnItems),
              Text(AppTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtnItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(AppTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
