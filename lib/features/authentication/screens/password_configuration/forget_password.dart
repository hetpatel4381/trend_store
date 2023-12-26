import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Headings
              Text(AppTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: AppSizes.spaceBtnItems),
              Text(AppTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: AppSizes.spaceBtwSetions * 2),

              /// Text Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: AppTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text('Submit'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}