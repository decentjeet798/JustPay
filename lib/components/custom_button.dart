import 'package:flutter/material.dart';
import 'package:YaPay/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final Icon? prefixIcon;
  final bool border;

  CustomButton(this.title, this.onTap,
      {this.textStyle, this.buttonColor, this.prefixIcon, this.border = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        height: 54,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: buttonColor == null
                ? LinearGradient(colors: [
                    CustomColor.lightGradient,
                    Theme.of(context).primaryColor
                  ])
                : null,
            borderRadius: BorderRadius.circular(12),
            border: border?Border.all(
              color: Theme.of(context).primaryColor
            ):null,
            color: buttonColor),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixIcon != null ? prefixIcon! : SizedBox.shrink(),
            prefixIcon != null
                ? SizedBox(
                    width: 12,
                  )
                : SizedBox.shrink(),
            Text(
              title,
              style: textStyle ??
                  Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      letterSpacing: 1),
            ),
          ],
        ),
      ),
    );
  }
}
