import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Image.asset(
                "assets/images/circle.png",
                color: const Color(0xFF00A884),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Read our',
                      style: TextStyle(color: Color(0xFF8696A0), height: 1.5),
                      children: [
                        TextSpan(text: ' Privacy Policy. ', style: TextStyle(color: Color(0xFF00A884))),
                        TextSpan(text: 'Tap "Agree and continue" to accept the '),
                        TextSpan(text: 'Terms of service', style: TextStyle(color: Color(0xFF00A884))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  width: MediaQuery.of(context).size.width - 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00A884),
                      foregroundColor: const Color(0xFF111B21),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    onPressed: () {},
                    child: const Text("AGREE AND CONTINUE"),
                  ),
                ),
                const SizedBox(height: 50,),
                Material(
                  color: const Color(0xFF182229),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: const Color(0x0ff0941a),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.language, color: Color(0xFF00A884)
                          ),
                          SizedBox(width: 10,),
                          Text('English'),
                          SizedBox(width: 10,),
                          Icon(Icons.keyboard_arrow_down, color: Color(0xFF00A884)
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
