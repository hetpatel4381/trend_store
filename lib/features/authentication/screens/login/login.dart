import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_store/common/styles/spacing_styles.dart';
import 'package:trend_store/common/widgets/login_signup/social_buttons.dart';
import 'package:trend_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:trend_store/common/widgets/login_signup/form_divider.dart';
import 'package:trend_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & SubTitle.
              const LoginHeader(),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: AppTexts.orSignInWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSetions),

              /// Footer
              const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
