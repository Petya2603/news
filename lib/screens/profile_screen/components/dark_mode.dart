import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/Config/theme/theme.dart';
import '../../controller/profile_controller.dart';

// ignore: camel_case_types
class profile_mode extends StatelessWidget {
  profile_mode({
    super.key,
  });
  final ProfileController profileController = ProfileController();
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
                    children: [
                      Wrap(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.wb_sunny_outlined,
                              color: AppColors.orange,
                            ),
                            title: const Text("Light mode"),
                            onTap: () {
                              profileController.toogletheme(false);
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text("Dark mode"),
                            onTap: () {
                              profileController.toogletheme(true);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/icons/mode.svg',
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(width: 13),
            const Text(
              "Dark/Light mode",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
