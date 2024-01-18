import 'package:flutter/material.dart';
import 'package:flutter_messenger/common/utils/coloors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read our',
          style: TextStyle(color: Coloors.greyDark, height: 1.5),
          children: [
            TextSpan(text: ' Privacy Policy. ', style: TextStyle(color: Coloors.blueDark)),
            TextSpan(text: 'Tap "Agree and continue" to accept the '),
            TextSpan(text: 'Terms of service', style: TextStyle(color: Coloors.blueDark)),
          ],
        ),
      ),
    );
  }
}
