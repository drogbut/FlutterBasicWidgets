import 'package:flutter/material.dart';
import '../my_constants.dart';

class MyTextInputField extends StatelessWidget {
  //----------- attributes-------------------//
  final IconData leadingIcon;
  final IconData actionIcon1;
  final IconData actionIcon2;
  final String hint;
  final double borderRadius;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool obscureText;
  final int maxLines;
  final double containerHeight;

  //--------------- constructor --------------//
  const MyTextInputField({
    Key key,
    this.leadingIcon,
    @required this.hint,
    this.inputType,
    this.inputAction,
    this.actionIcon1,
    this.actionIcon2,
    this.obscureText = false,
    this.maxLines,
    this.containerHeight, this.borderRadius = 20,
  }) : super(key: key);

  //------------ methods------------------//
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          height: size.height * 0.06,
          width: size.width * 0.8,
          constraints: BoxConstraints.tightFor(height: containerHeight),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(width: 1.0, color: colorText),
          ),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Icon(
                  leadingIcon,
                  color: alertDialogColor,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
              Expanded(
                child: TextField(
                  keyboardType: inputType,
                  textInputAction: inputAction,
                  maxLines: maxLines,
                  obscureText: obscureText,
                  strutStyle: StrutStyle.disabled,
                  decoration: InputDecoration(
                    hintText: hint,
                    /*hintStyle: myTextStyle*/
                  ),
                ),
              ),
              Container(
                child: Icon(
                  actionIcon1,
                  color: colorText,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
              Container(
                  child: Icon(
                    actionIcon2,
                    color: colorText,
                  ),
                  padding: EdgeInsets.only(right: 10.0)),
            ],
          )
      ),
    );
  }
}
