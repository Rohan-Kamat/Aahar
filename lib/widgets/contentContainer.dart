import 'package:flutter/material.dart';

class ContentContainer extends StatelessWidget {

  final Widget? child;
  final double height;
  const ContentContainer({
    super.key,
    required this.child,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 22, right: 22 ),
      width: size.width,
      height: height,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: child,
    );
  }
}
