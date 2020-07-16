import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';

class EditTextBox extends StatelessWidget {
  final String hintText;
  final bool readOnly;
  EditTextBox({this.hintText, this.readOnly});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.size50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white60,
      ),
      child: TextFormField(
        readOnly: readOnly,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide.none,
          ),
          hintText: "$hintText",
          hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
