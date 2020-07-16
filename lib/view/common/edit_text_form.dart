import 'package:flutter/material.dart';

class EditTextFormField extends StatelessWidget {
  final String errorText;
  final String labelText;
  final Icon icon;
  final TextEditingController controller;

  const EditTextFormField(
      {Key key, this.errorText, this.labelText, this.icon, this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: icon,
        labelText: labelText,
        errorText: errorText,
      ),
      controller: controller,
    );
  }
}
