import 'package:flutter/material.dart';

// ignore: camel_case_types
class profile_lang extends StatelessWidget {
  final String text_lang;
  final lang_icon;
  const profile_lang({super.key, required this.text_lang, this.lang_icon});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ListTile(
          leading: Image.asset(
            lang_icon,
          ),
          title: Text(text_lang),
          onTap: () {},
        ),
      ],
    );
  }
}
