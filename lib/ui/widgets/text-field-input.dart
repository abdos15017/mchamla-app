import 'package:flutter/material.dart';
import '../../utilities/constants.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.icon,
    required this.hint,
    this.inputType,
    this.inputAction,
    this.controller,
    required this.isPassword,

  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final TextEditingController? controller;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Container(
        //height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: TextField(
            cursorColor: kdeepOrange,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusColor: kdeepOrange,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Icon(
                  icon,
                  size: 25,
                  color: kdeepOrange,
                ),
              ),
                hintText: hint,
                hintStyle: kBodyText,

            ),
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
            obscureText: isPassword,
          ),
        ),
      ),
    );
  }
}