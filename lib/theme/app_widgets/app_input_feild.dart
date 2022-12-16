import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class InputField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final TextEditingController? controller;
  final String placeholder;
  final String? labelText;
  final Widget? leading;
  final Widget? trailing;
  final Widget? suffix;
  final Widget? prefix;
  final bool password;
  final int? maxhit;
  final void Function()? trailingTapped;
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  InputField(
      {Key? key,
      this.validator,
      this.inputAction,
      this.inputType,
      this.labelText,
      this.controller,
      this.placeholder = '',
      this.leading,
      this.trailing,
      this.trailingTapped,
      this.password = false,
      this.suffix,
      this.maxhit,
      this.prefix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: inputType,
        controller: controller,
        style: const TextStyle(height: 1),
        obscureText: password,
        validator: validator,
        maxLines: maxhit,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: placeholder,
          suffix: suffix,
          prefix: prefix,
          labelStyle: const TextStyle(color: kcDark),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          filled: true,
          fillColor: kcVeryLightGrey,
          prefixIcon: leading,
          suffixIcon: trailing != null
              ? GestureDetector(
                  onTap: trailingTapped,
                  child: trailing,
                )
              : null,
          border: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcLightGreyColor),
          ),
          errorBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcDanger),
          ),
          focusedBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcLightGreyColor),
          ),
          enabledBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: kcDark),
          ),
        ),
      ),
    );
  }
}
