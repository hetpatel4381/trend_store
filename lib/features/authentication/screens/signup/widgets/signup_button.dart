import 'package:flutter/material.dart';
import 'package:trend_store/utils/constants/text_strings.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(AppTexts.createAccount),
      ),
    );
  }
}
