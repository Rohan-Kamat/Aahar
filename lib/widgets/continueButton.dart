import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../helpers/themes/consts.dart';

class ContinueButton extends StatelessWidget {
  final Function()? onPressed;

  const ContinueButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthRatio = size.height / Consts.figmaWidth;
    return SizedBox(
      height: 40,
      width: 350 * widthRatio,
      child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 0.25, color: Colors.black),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AutoSizeText(
                'Continue',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 1.33,
                  letterSpacing: -0.24,
                ),
              ),
              Icon(
                Icons.arrow_right_alt_sharp,
                color: Colors.black,
              )
            ],
          )),
    );
  }
}
