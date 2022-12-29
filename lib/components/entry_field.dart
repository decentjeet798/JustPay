import 'package:flutter/material.dart';
import 'package:payes/theme/colors.dart';

class EntryField extends StatelessWidget {
  final String? hint;
  final Widget? suffix;

  EntryField({this.hint, this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          hintStyle: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w500),
          isDense: true,
          fillColor: CustomColor.textFieldColor,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)
          ),
          hintText: hint,
          suffixIcon: suffix
      ),
    );
  }
}
