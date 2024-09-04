import 'package:flutter/material.dart';

import '../../utils/golbal.dart';
import 'email_add.dart';

AlertDialog resetSettings({
  required BuildContext context,
  required bool isEmail,
  required String text,
  required String title,
  required bool isDivider,
  required bool isIcon
}) {
  return AlertDialog(
    icon: isIcon? const Icon(Icons.restart_alt_outlined):const Icon(Icons.phone_android_outlined),
    title: Center(
      child: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          maxLines: 3,
        ),
        isDivider ? const Divider() : const Padding(padding: EdgeInsets.zero),
        if (isEmail)
          Column(
            children: [
              emailAdd(text: 'deeppatel100267@gmail.com', img: img1),
              const SizedBox(
                height: 10,
              ),
              emailAdd(text: 'chukepatel555@gmail.com', img: img2),
              const SizedBox(
                height: 10,
              ),
              emailAdd(text: 'dkpatel1501@gmail.com', img: img3),
            ],
          )
        else
          const Padding(padding: EdgeInsets.zero),
        isDivider ? const Divider() : const Padding(padding: EdgeInsets.zero),
      ],
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Cancel'),
      ),
      TextButton(
        onPressed: () {},
        child: const Text('Accept'),
      )
    ],
  );
}
