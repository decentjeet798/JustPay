import 'package:flutter/material.dart';
import 'package:payes/theme/colors.dart';

class AuthEntryField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextStyle? textStyle;
  final Widget? suffix;
  final int? maxLines;
  AuthEntryField(this.label, this.controller, {this.textStyle, this.suffix, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Theme.of(context).textTheme.caption!.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: CustomColor.textFieldBorder!,
            width: 0.4
          ),
          borderRadius: BorderRadius.circular(10)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: CustomColor.textFieldBorder!,
              width: 0.4
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: suffix
      ),
      style: textStyle??Theme.of(context).textTheme.bodyText1,
    );
  }
}
