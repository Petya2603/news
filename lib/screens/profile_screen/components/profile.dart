import 'package:flutter/material.dart';
import 'package:news_app/Config/theme/theme.dart';
import 'package:news_app/screens/profile_screen/components/profile_lang.dart';

class profile extends StatelessWidget {
  final String text;
  final Icon;
  const profile({super.key, required this.text, this.Icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    backgroundColor: AppColors.white,
                    children: const [
                      profile_lang(
                        text_lang: "Türkmen dili",
                        lang_icon: 'assets/images/_flagBase.png',
                      ),
                      profile_lang(
                        text_lang: "Русский язык",
                        lang_icon: 'assets/images/gb.png',
                      ),
                      profile_lang(
                        text_lang: "English",
                        lang_icon: 'assets/images/eng.png',
                      ),
                    ],
                  ),
                );
              },
              icon: Icon,
            ),
            const SizedBox(width: 13),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
