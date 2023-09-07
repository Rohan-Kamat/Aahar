import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {

  final String? hintText;
  final TextEditingController textFieldController;

  const TextFieldWidget({
    super.key,
    this.hintText,
    required this.textFieldController
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late FocusNode _textFieldFocusNode;
  Color _textFieldFillColor = const Color(0xFFD9D9D9);
  
  @override
  void initState(){
    super.initState();
    _textFieldFocusNode = FocusNode();
    _textFieldFocusNode.addListener(_onFocusChange);
  }
  
  @override
  void dispose(){
    super.dispose();
    _textFieldFocusNode.removeListener(_onFocusChange);
    _textFieldFocusNode.dispose();
  }

  void _onFocusChange(){
    if (_textFieldFocusNode.hasFocus || widget.textFieldController.text.isNotEmpty){
      setState(() {
        _textFieldFillColor = Colors.white;
      });
    } else {
      setState(() {
        _textFieldFillColor = const Color(0xFFD9D9D9);
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        focusNode: _textFieldFocusNode,
        controller: widget.textFieldController,
        onTapOutside: (event){
          _textFieldFocusNode.unfocus();
        },
        decoration: InputDecoration(
          fillColor: _textFieldFillColor,
          filled: true,
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.only(left: 15, top: 7, bottom: 7),
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.4000000059604645),
            fontSize: 15,
            fontStyle: FontStyle.italic,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w300,
            height: 1.33,
            letterSpacing: -0.24,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 0
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xFFFF7F7F),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}


