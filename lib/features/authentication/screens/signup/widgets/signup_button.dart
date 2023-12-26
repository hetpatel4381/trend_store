import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trend_store/features/authentication/screens/signup/verify_email.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Get.to(() => const VerifyEmailScreen()),
        child: const Text(AppTexts.createAccount),
      ),
    );
  }
}
