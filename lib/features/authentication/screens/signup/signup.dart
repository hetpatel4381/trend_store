import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_store/common/widgets/login_signup/form_divider.dart';
import 'package:trend_store/common/widgets/login_signup/social_buttons.dart';
import 'package:trend_store/features/authentication/screens/signup/widgets/signup_button.dart';
import 'package:trend_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:trend_store/features/authentication/screens/signup/widgets/terms_and_condition_checkbox.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/constants/text_strings.dart';
import 'package:trend_store/utils/theme/custom_themes/appbar_theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: SAppBarTheme.darkAppBarTheme,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(AppTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Form
              const SignUpForm(),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Terms & Condition CheckBox
              const TermsAndConditionCheckBox(),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Sign Up Button
              const SignUpButton(),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Divider
              FormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Social Buttons
              const AppSocialButtons(),
              const SizedBox(height: AppSizes.spaceBtwSetions),
            ],
          ),
        ),
      ),
    );
  }
}
