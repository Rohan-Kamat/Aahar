import 'package:aahar/helpers/themes/consts.dart';
import 'package:aahar/screens/login/signUpCompleteScreen.dart';
import 'package:aahar/widgets/contentContainer.dart';
import 'package:aahar/widgets/continueButton.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:aahar/widgets//gradientContainer.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final OtpFieldController _otpController = OtpFieldController();
  late int _pin;

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
              title: "Verify",
              subtitle: "Verify yourself to access your Aahar account",
              height: 300 * heightRatio,
              contentStart: 150 * heightRatio),
          Positioned(
              top: 244 * heightRatio,
              child: ContentContainer(
                height: 608 * heightRatio,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AutoSizeText(
                      'Enter OTP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.17,
                        letterSpacing: -0.24,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AutoSizeText(
                      'A 4 - Digit One Time Password has been sent to your registered mobile number and your email.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        height: 1.67,
                        letterSpacing: -0.24,
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    AutoSizeText(
                      'OTP has been sent to +91 - 96924 ****6',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        height: 1.67,
                        letterSpacing: -0.24,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 245,
                      height: 50,
                      child: OTPTextField(
                          controller: _otpController,
                          fieldStyle: FieldStyle.box,
                          length: 4,
                          fieldWidth: 50,
                          spaceBetween: 15,
                          outlineBorderRadius: 0,
                          otpFieldStyle: OtpFieldStyle(
                            backgroundColor: const Color(0xFFD9D9D9),
                            focusBorderColor: Colors.black,
                          ),
                          onCompleted: (pin) {
                            _pin = int.parse(pin);
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          _otpController.clear();
                        },
                        child: AutoSizeText(
                          'Clear',
                          style: TextStyle(
                            color: Consts.otpColor,
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.33,
                            letterSpacing: -0.24,
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {
                              //TODO: Check Username
                            },
                            child: AutoSizeText(
                              'Check Username',
                              style: TextStyle(
                                color: Consts.otpColor,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                                letterSpacing: -0.24,
                              ),
                            )),
                        TextButton(
                            onPressed: () {
                              //TODO: Resend OTP
                            },
                            child: AutoSizeText(
                              'Resend OTP',
                              style: TextStyle(
                                color: Consts.otpColor,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 1.33,
                                letterSpacing: -0.24,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 124 * heightRatio,
                    ),
                    ContinueButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SignUpCompleteScreen()));
                      },
                    ),
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
