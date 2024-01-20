import 'package:flutter/material.dart';
import 'package:flutter_messenger/common/extension/custom_theme_extension.dart';
import 'package:flutter_messenger/common/widgets/custom_elevated_button.dart';
import 'package:flutter_messenger/features/widgets/language_button.dart';
import 'package:flutter_messenger/features/widgets/privacy_and_terms.dart';

import '../../../common/utils/coloors.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Image.asset(
                  "assets/images/circle.png",
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Welcome to Whatsapp",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(onPressed: (){}, text: "AGREE AND CONTINUE",),
                const SizedBox(height: 50,),
                const LanguageButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
