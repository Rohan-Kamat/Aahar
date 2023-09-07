import 'package:aahar/consts/consts.dart';
import 'package:aahar/widgets/contentContainer.dart';
import 'package:aahar/widgets/continueButton.dart';
import 'package:aahar/widgets/textFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:aahar/widgets/gradientContainer.dart';


class CreatePasswordScreen extends StatefulWidget {


  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {

  final TextEditingController _passwordController = TextEditingController();

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
                  title: "Welcome to\nAahar",
                  subtitle: "Create your new account",
                  height: 300 * heightRatio,
                  contentStart: 100
              ),
              Positioned(
                  top: 244 * heightRatio,
                  child: ContentContainer(
                    height: 608 * heightRatio,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Create your new Aahar account to access the app.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            //fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 1.67,
                            letterSpacing: -0.24,
                          ),
                        ),
                        const SizedBox(height: 30,),
                        const Text(
                          'Create a new password',
                          style: TextStyle(
                            color: Color(0xFFFF7F7F),
                            fontSize: 12,
                            //fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                            height: 1.67,
                            letterSpacing: -0.24,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        TextFieldWidget(
                            hintText: "Enter Password",
                            textFieldController: _passwordController
                        ),
                        SizedBox(height: 293 * heightRatio,),
                        ContinueButton(
                          onPressed: (){
                            //TODO: Create Password for future logins
                          },
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        )

    );

  }
}
