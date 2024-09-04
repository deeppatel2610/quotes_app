import 'package:flutter/material.dart';

Row emailAdd({required String text, required img}) {
  return Row(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(img),
      ),
      const SizedBox(
        width: 7,
      ),
      Text(text)
    ],
  );
}
