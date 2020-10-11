import 'package:flutter/material.dart';

import 'package:rent_design/presentation/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final Widget suffixIcon;
  final Widget prefixIcon;
  final String labelText;
  final ValueChanged<String> onChanged;
  final bool obscureText;
  const TextFieldWidget({
    Key key,
    this.suffixIcon,
    this.prefixIcon,
    this.labelText = '',
    this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.5),
              offset: Offset(0, 2.5),
              blurRadius: 3.5,
            ),
          ],
          color: colorWhite(),
        ),
        child: TextFormField(
          obscureText: obscureText,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            labelText: labelText,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
          ),
        ),
      ),
    );
  }
}
