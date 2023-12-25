import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {    
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInpnutFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInpnutFields),

          /// UserName
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInpnutFields),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInpnutFields),

          /// Phone
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInpnutFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
        ],
      ),
    );
  }
}
