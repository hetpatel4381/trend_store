import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_store/utils/constants/sizes.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.spaceBtwSetions),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: AppTexts.email,
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwInpnutFields),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: AppTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwInpnutFields / 2),

                      /// Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Remember Me
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text(AppTexts.rememberMe),
                            ],
                          ),

                          ///Forget Password
                          TextButton(
                            onPressed: () {},
                            child: const Text(AppTexts.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSetions),

                      /// Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          child: const Text(AppTexts.signIn),
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtnItems),

                      /// Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(AppTexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}