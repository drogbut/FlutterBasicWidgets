import 'package:flutter/material.dart';

/// * [align] sizes according to the size of its child and positions the child
///   according to an [Alignment] value.
class MyAlertDialog extends StatelessWidget {
  ///
  final AlignmentDirectional align;
  final double borderRadius, marginTop, marginBottom, avatarPositionTop;
  final String title;
  final Color backendContainerColor, titleColor;
  final Alignment alignSubmittedWidget;
  final Widget descriptionWidget, avatarChild, submittedWidget;
  ///
  const MyAlertDialog(
    this.submittedWidget, {
    Key key,
    @required this.title,
    this.align = AlignmentDirectional.center,
    this.backendContainerColor = Colors.white,
    this.avatarPositionTop = 60,
    this.descriptionWidget,
    this.avatarChild,
    this.titleColor,
    this.alignSubmittedWidget,
    this.marginTop = 25.0,
    this.marginBottom = 25.0,
    this.borderRadius = 5.0,
  }) : super(key: key);
  ///
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: align,
      overflow: Overflow.visible,
      children: <Widget>[
        Card(
          color: backendContainerColor,
          elevation: 7.5,
          margin: EdgeInsets.only(top: 25.0, bottom: 25.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Column(
              children: [
                Container(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: titleColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        fontSize: 24.0),
                  ),
                  margin: EdgeInsets.only(top: marginTop),
                ),
                Container(
                  child: descriptionWidget,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: marginBottom),
                  child: submittedWidget,
                  alignment: alignSubmittedWidget,
                ),
              ],
            ),
          ),
        ),
        Positioned(top: -avatarPositionTop, child: avatarChild)
      ],
    );
  }
}
