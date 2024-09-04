import 'package:flutter/material.dart';

TextField inputBoxMethod() {
  return TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(Icons.arrow_drop_down),
      labelText: 'Label',
      hintText: 'Input',
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green.shade500,
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green.shade500,
          width: 2,
        ),
      ),
    ),
  );
}
