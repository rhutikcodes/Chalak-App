import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    Key? key,
    required this.hintText,
    required this.iconData,
    required this.controller,
    this.onTap,
    required this.textInputType,
  }) : super(key: key);
  final String hintText;
  final IconData iconData;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: controller,
      onTap: onTap,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(top: 20), // add padding to adjust text
        isDense: true,
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(top: 15), // add padding to adjust icon
          child: Icon(iconData),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Cant be empty";
        }
        return null;
      },
    );
  }
}
