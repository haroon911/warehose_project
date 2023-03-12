import 'package:flutter/material.dart';

class OnboardingButtom extends StatelessWidget {
  const OnboardingButtom({super.key, required this.title , required this.fun});
  final String title;
  final  fun;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: fun,
    );
  }
}
