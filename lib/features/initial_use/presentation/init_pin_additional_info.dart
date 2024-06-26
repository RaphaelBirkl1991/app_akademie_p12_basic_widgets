import 'package:flutter/material.dart';

class PinAdditionalInfoScreen extends StatelessWidget {
  const PinAdditionalInfoScreen({super.key});

  final String hexColor = "#010536";

  Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text(
          "Remember your PIN",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
        ),
        const Spacer(),
        const Text(
          "To prevent misuse \n you have to unlock\n the App if you use \n more than one \n signal within 24 \n hours.",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        FractionallySizedBox(
          widthFactor: 0.9,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                hexToColor(hexColor),
              ),
            ),
            child: const Text(
              "Got it",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
