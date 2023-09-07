import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {

  final String title;
  final String subtitle;
  final double height;
  final double contentStart;

  const GradientContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.height,
    required this.contentStart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFFFD4D4), Color(0xFFFF7F7F)],
        ),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: contentStart),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                //fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0.88,
                letterSpacing: -0.24,
              ),
            ),
            const SizedBox(height: 6,),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                //fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
                height: 1.33,
                letterSpacing: -0.24,
              ),
            )
          ]
      )
    );
  }
}
