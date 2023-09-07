import 'package:aahar/helpers/themes/consts.dart';
import 'package:aahar/widgets/contentContainer.dart';
import 'package:aahar/widgets/continueButton.dart';
import 'package:aahar/widgets/gradientContainer.dart';
import 'package:flutter/material.dart';
import 'package:aahar/screens/login/createPasswordScreen.dart';

class SignUpCompleteScreen extends StatelessWidget {
  const SignUpCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightRatio = size.height / Consts.figmaHeight;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            GradientContainer(
                title: "Verification\nComplete !",
                subtitle:
                    "Please wait for a moment while we setup the application for you",
                height: 852 * heightRatio,
                contentStart: 470 * heightRatio),
            Positioned(
                top: 620 * heightRatio,
                child: ContentContainer(
                  height: 232 * heightRatio,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      ContinueButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreatePasswordScreen()));
                        },
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
